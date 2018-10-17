package com.rtc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rtc.dao.UserDAO;
import com.rtc.model.Users;

@Service
@Transactional
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDAO userDAO;

	@Override
	@Transactional
	public void addUser(Users user) {
		userDAO.addUser(user);
	}

	@Override
	@Transactional
	public List<Users> getAllUser() {
		return userDAO.getAllUsers();
	}

	@Override
	@Transactional
	public void deleteUser(Integer userId) {
		userDAO.deleteUser(userId);
	}

	@Override
	@Transactional
	public Users getUser(int userId) {
		return userDAO.getUser(userId);
	}
	
	@Override
	public Users getUserByUsernamePassword(String userName, String password) {
		return userDAO.getUserByUsernamePassword(userName, password);
	}

	@Override
	@Transactional
	public Users updateUser(Users user) {
		return userDAO.updateUser(user);
	}
	
	public Users constructUser(String userName, String password) {
		return userDAO.getUserByUsernamePassword(userName, password);
	}

}
