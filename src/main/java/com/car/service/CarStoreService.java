package com.car.service;

import java.util.List;

import com.car.entity.User;

public interface CarStoreService {

	User getUserInfo(String user_name);

	List<User> getUserDatagrid(String search, int start, int pageSize);

	int delUser(Integer user_id);

	int getCount(String search);

	List<User> getAllUserInfo();

}
