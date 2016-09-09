package com.car.mapper;

import java.util.List;

import com.car.entity.Insurance;
import com.car.entity.Order;

public interface StoreMapper {

	List<Insurance> findinsurance();

	int addorder(Order c);

	Insurance addshoping(String gid);

}
