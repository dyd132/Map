package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.car.entity.Insurance;
import com.car.entity.Order;
import com.car.mapper.StoreMapper;
import com.car.service.StoreService;

@Service("storeService")
public class StoreServiceImpl implements StoreService {

	@Autowired
	private StoreMapper storemapper;

	public List<Insurance> findinsurance() {
		// TODO Auto-generated method stub
		return storemapper.findinsurance();
	}

	public int addorder(Order c) {
		// TODO Auto-generated method stub
		return storemapper.addorder(c);
	}

	public Insurance addshoping(String gid) {
		// TODO Auto-generated method stub
		return storemapper.addshoping(gid);
	}

	
	
}
