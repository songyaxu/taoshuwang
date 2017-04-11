package com.xujie.dao.impl;

import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.xujie.dao.CommentDAO;
import com.xujie.entity.Comment;

public class CommentDAOImpl extends HibernateDaoSupport implements CommentDAO{
	
	@SuppressWarnings("unchecked")
	public List<Comment> findCommentByid(int bookid){
		String hql = "from Comment comment where comment.bookid='" + bookid+ "'";
		return (List<Comment>) this.getHibernateTemplate().find(hql); 
	}
}
