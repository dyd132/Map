package com.car.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.car.entity.Checktou;
import com.car.mapper.CheckMapper;
import com.car.service.CheckI;

@Service("cservice")
public class CheckService implements CheckI {
	
	@Autowired
	private CheckMapper checkmapper;


	@Override
	public List<Checktou> check(Checktou checktou) {
		return checkmapper.check(checktou);
	}


}
