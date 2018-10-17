package com.rtc.dao;

import java.util.List;

import com.rtc.model.Users;

public interface UserDAO {
	
	public void addUser(Users user);

	public List<Users> getAllUsers();

	public void deleteUser(Integer userId);

	public Users updateUser(Users user);

	public Users getUser(int userId);
	
	public Users getUserByUsernamePassword(String userName, String password);

}
