package com.xujie.service;

import java.util.List;
import com.xujie.entity.Comment;
public interface CommentService {
	public List<Comment> findCommentByid(int bookid);
}
