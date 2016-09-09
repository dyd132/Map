package com.car.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.car.entity.CarDamage;
import com.car.entity.CarUser;
import com.car.entity.Report;
import com.car.mapper.CarsClaimMapper;
import com.car.service.CatClaimService;

/** 
* @author  作者 E-mail:尹国庆
* @date 创建时间：2016年9月2日 上午11:31:54 
* @version 1.0 * @parameter  * @since  
* @return  
*/
@Service
public class CatClaimServiceimpl implements CatClaimService {

	@Autowired
	private CarsClaimMapper carCMapper;
	
	@Override
	public int saveReport(Report report) {
		
		return carCMapper.saveReport(report);
	}

	
	@Override
	public int updateReportState(Report report) {
		
		return carCMapper.updateReportState(report);
	}

	/*@Override
	public int saveUploadpictures(List<CarDamage> carDamages, Report report) {
		int i=0;
		for (CarDamage carDamage : carDamages) {
			carDamage.setRep_id(report.getRep_id());
			i=saveCarDamage(carDamage);
		}
		int j=updataReportsehngfen(report);
		if(i>0&&j>0){
			return 1;
		}
		return 0;
	}
	
	*//**
	 * 上传图片的路径
	 * @return
	 *//*
	private int saveCarDamage(CarDamage carDamage){
		return carCMapper.saveCarDamage(carDamage);
		
	}
	
	
	private int updataReportsehngfen(Report report){
		return carCMapper.updataReportsehngfen(report);
		
	}*/
	
	
	

	@Override
	public int updateauthentication(Report report) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public List<Report> getReports() {
		
		return carCMapper.getReports();
	}

	/**
	 * 如果不通过删除该条报案数据(本类里调用)
	 */
	
	private int deleteReport(int rep_id){
		return carCMapper.deleteReport(rep_id);
		
	}




	@Override
	public Report getReportByRe(Report report) {
		// TODO Auto-generated method stub
		return carCMapper.getReportByRe(report);
	}


	@Override
	public Report getReportByUserId(Integer user_id) {
		// TODO Auto-generated method stub
		return carCMapper.getReportByUserId(user_id);
	}


	@Override
	public void saveUploadpictures(CarDamage carDamage) {
		// TODO Auto-generated method stub
		carCMapper.saveUploadpictures(carDamage);
	}


	@Override
	public int saveUploadpictures(List<CarDamage> carDamages, Report report) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public CarUser getCarUserByUser(CarUser carUser) {
		// TODO Auto-generated method stub
		return carCMapper.getCarUserByUser(carUser);
	}


	@Override
	public Report getReport() {
		// TODO Auto-generated method stub
		return carCMapper.getReport();
	}


	@Override
	public List<Report> getReportList() {
		// TODO Auto-generated method stub
		return carCMapper.getReportList();
	}


	@Override
	public void deleteByCarUser(Integer user_id) {
		// TODO Auto-generated method stub
		carCMapper.deleteByCarUser(user_id);
	}


	@Override
	public int updateReport(Report report) {
		// TODO Auto-generated method stub
		return carCMapper.updateReport(report);
	}


	@Override
	public List<CarDamage> getImagesByUserId(Integer user_id) {
		// TODO Auto-generated method stub
		return carCMapper.getImagesByUserId(user_id);
	}


	@Override
	public void deleteReport(Integer user_id) {
		// TODO Auto-generated method stub
		carCMapper.deleteByCarUser(user_id);
		carCMapper.deleteByCar_damage(user_id);
	}


}

