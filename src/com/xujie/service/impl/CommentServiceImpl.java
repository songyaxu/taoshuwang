package com.xujie.service.impl;

import java.util.List;

import com.xujie.dao.CommentDAO;
import com.xujie.entity.Comment;
import com.xujie.service.CommentService;

public class CommentServiceImpl implements CommentService{
	private CommentDAO commentDao;

	public CommentDAO getCommentDao() {
		return commentDao;
	}

	public void setCommentDao(CommentDAO commentDao) {
		this.commentDao = commentDao;
	}
	public List<Comment> findCommentByid(int bookid){
		return (List<Comment>) this.commentDao.findCommentByid(bookid); 
	}
}
