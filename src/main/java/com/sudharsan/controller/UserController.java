package com.sudharsan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blog.exception.ServiceException;
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
				@RequestParam("EmailId") String emailid,ModelMap modelMap) {
			userDetail.setName(name);
			userDetail.setEmailId(emailid);
			userDetail.setPassword(password);
			try {
				userService.serviceSave(userDetail);
			} catch (ServiceException e) {
				modelMap.addAttribute("SIGNUP_ERROR",e.getMessage());
			}
			return "redirect:../register.jsp";
		}
		@GetMapping("/login")
		public String store(HttpSession session,@RequestParam("emailid") String email, @RequestParam("password") String password,ModelMap modelMap){
			userDetail.setEmailId(email);
			userDetail.setPassword(password);
			try {
				UserDetail user=userService.serviceLogin(userDetail);
				session.setAttribute("LOGGED_USER", user);
				if(user.getRoleId().getId()==2){
				return "../articles/viewArticles";
				}
				else
				{
					return "../users";
				}
			} 
			catch (ServiceException e) {
				modelMap.addAttribute("LOGIN_ERROR",e.getMessage());
				return "../register.jsp";
			}
		}
		@GetMapping("/logout")
		public String logout(HttpServletRequest request) {
			HttpSession httpSession = request.getSession(false);
			Object user = httpSession.getAttribute("LOGGED_USER");
			if (user != null) {
				httpSession.invalidate();
				return "redirect:/";
			} else {
				return "redirect:/";
			}
		}
		@GetMapping("/delete")
		public String delete(@RequestParam("userId") int userId){
			UserDetail userDetail=new UserDetail();
			userDetail.setId(userId);
			UserService userService=new UserService();
			try{
			userService.serviceDelete(userDetail);
			}
			catch(ServiceException e){
				e.printStackTrace();
			}
			return "redirect:../users";
		}
	}	

