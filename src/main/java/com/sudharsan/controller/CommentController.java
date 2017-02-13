package com.sudharsan.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blog.exception.ServiceException;
import com.blog.model.Article;
import com.blog.model.Comment;
import com.blog.model.UserDetail;
import com.blog.service.CommentsService;

@Controller
@RequestMapping("/comments")
public class CommentController {
    @GetMapping("/save")
public String commentSave(@RequestParam("articleId") int articleId,HttpSession session,
		@RequestParam("comment") String comment){
    	Comment comments=new Comment();
    	Article article=new Article();
    	UserDetail userDetail=new UserDetail();
    	article.setId(articleId);
    	userDetail.setId(Integer.parseInt(session.getAttribute("LOGGED_USER").toString()));    	
    	comments.setArticleId(article);
    	comments.setUserId(userDetail);
    	comments.setComments(comment);
    	CommentsService commentsService=new CommentsService();
	try{
		commentsService.serviceSave(comments);
	}
	catch(ServiceException e){
		e.printStackTrace();
	}
	return "../articles/viewArticles";
}
}
