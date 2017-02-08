package com.sudharsan.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blog.exception.ServiceException;
import com.blog.model.Role;
import com.blog.model.UserDetail;
import com.blog.service.UserService;
@Controller
@RequestMapping("/users")
public class UserController {
	

		private UserDetail userDetail = new UserDetail();

		private UserService userService = new UserService();

		@GetMapping
		public String index(ModelMap modelMap) {
			List<UserDetail> userList = userService.serviceListAllUsers();
			modelMap.addAttribute("USER_LIST", userList);
			return "userlist.jsp";
		}

		@GetMapping("/save")
		public String store(@RequestParam("Name") String name, @RequestParam("Password") String password,
				@RequestParam("EmailId") String emailid, @RequestParam("RoleId") int role) {
			userDetail.setName(name);
			userDetail.setEmailId(emailid);
			userDetail.setPassword(password);
			Role r=new Role();
			r.setId(role);
			userDetail.setRoleId(r);
			try {
				userService.serviceSave(userDetail);
			} catch (ServiceException e) {
				e.printStackTrace();
			}
			return "redirect:../register.jsp";
		}
		@GetMapping("/login")
		public String store(@RequestParam("emailID") String email, @RequestParam("password") String password){
			userDetail.setEmailId(email);
			userDetail.setPassword(password);
			try {
				
				userService.serviceLogin(userDetail);

			} catch (ServiceException e) {
				e.printStackTrace();
			}
			return "../postArticle.jsp";
		}
		}	

