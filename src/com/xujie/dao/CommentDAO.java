package com.xujie.dao;

import java.util.List;

import com.xujie.entity.Comment;

public interface CommentDAO {
	public List<Comment> findCommentByid(int bookid);
}
