package com.sudharsan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blog.dao.ArticleDAO;
import com.blog.dao.SeedCatagoryDAO;
import com.blog.model.Article;
import com.blog.model.SeedCatagory;
import com.blog.model.UserDetail;
import com.blog.service.ArticleService;
@Controller
@RequestMapping("/articles")
public class ArticleController {
	@GetMapping("/publish")
	public String publish(@RequestParam("title") String title, @RequestParam("content") String content,
			@RequestParam("userId") int userId, @RequestParam("catagory") String catagory) {
		Article article = new Article();
		SeedCatagory seedCatagory=new SeedCatagory();
		UserDetail userDetail=new UserDetail();
		userDetail.setId(userId);
		article.setUserId(userDetail);
		article.setTitle(title);
		article.setContent(content);
		seedCatagory.setCatagory(catagory);
		seedCatagory.setUserId(userDetail);
		ArticleDAO articleDAO=new ArticleDAO();
		SeedCatagoryDAO seedCatagoryDAO=new SeedCatagoryDAO();
		ArticleService articleService = new ArticleService();
		articleService.postArticleService(article,seedCatagory,articleDAO,seedCatagoryDAO );
		return "../register.jsp";
}
}
