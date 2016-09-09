package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.car.entity.User;
import com.car.mapper.CarStoreMapper;
import com.car.service.CarStoreService;

@Service("carstoreservice")
public class CarStoreServiceImpl implements CarStoreService {
	
	@Autowired
	private CarStoreMapper storemapper ;

	@Override
	public User getUserInfo(String user_name) {
		// TODO Auto-generated method stub
		return storemapper.getUserInfo(user_name);
	}

	@Override
	public List<User> getUserDatagrid(String search, int start, int pageSize) {
		// TODO Auto-generated method stub
		return storemapper.getUserDatagrid(search,start,pageSize);
	}

	@Override
	public int delUser(Integer user_id) {
		// TODO Auto-generated method stub
		return storemapper.delUser(user_id);
	}

	@Override
	public int getCount(String search) {
		// TODO Auto-generated method stub
		return storemapper.getCount(search);
	}

	@Override
	public List<User> getAllUserInfo() {
		// TODO Auto-generated method stub
		return storemapper.getAllUserInfo();
	}
	
}
