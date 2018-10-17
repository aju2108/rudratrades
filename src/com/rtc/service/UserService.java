package com.rtc.service;

import java.util.List;

import com.rtc.model.Users;

public interface UserService {
	
	public void addUser(Users User);

	public List<Users> getAllUser();

	public void deleteUser(Integer userId);

	public Users getUser(int userId);
	
	public Users getUserByUsernamePassword(String userName, String password);

	public Users updateUser(Users user);

}
