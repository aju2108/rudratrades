package com.rtc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.rtc.model.Users;

@Repository
public class UserDAOImpl implements UserDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addUser(Users user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Users> getAllUsers() {
		return sessionFactory.getCurrentSession().createQuery("from User").list();
	}

	@Override
	public void deleteUser(Integer userId) {
		Users user = (Users) sessionFactory.getCurrentSession().load(Users.class, userId);
		if (!StringUtils.isEmpty(user)) {
			this.sessionFactory.getCurrentSession().delete(user);
		}
	}

	@Override
	public Users updateUser(Users user) {
		sessionFactory.getCurrentSession().update(user);
		return user;
	}

	@Override
	public Users getUser(int userId) {
		return (Users) sessionFactory.getCurrentSession().get(Users.class, userId);
	}

	@Override
	public Users getUserByUsernamePassword(String userName, String password) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Users.class);
		criteria.add(Restrictions.eq("username", userName));
		criteria.add(Restrictions.eq("password", password));
		Users user = (Users)criteria.uniqueResult();
		return user;
	}
	

}
