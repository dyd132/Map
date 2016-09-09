package com.car.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.car.entity.User;

public interface CarStoreMapper {

	User getUserInfo(@Param(value="user_name")String user_name);

	List<User> getUserDatagrid(@Param(value="search")String search, @Param(value="start")int start, @Param(value="pageSize")int pageSize);

	int delUser(Integer user_id);

	int getCount(@Param(value="search")String search);

	List<User> getAllUserInfo();
	

}
