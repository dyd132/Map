package com.car.mapper;

import java.util.List;

import com.car.entity.CarDamage;
import com.car.entity.CarUser;
import com.car.entity.Report;

/** 
* @author  作者 E-mail:尹国庆
* @date 创建时间：2016年9月2日 上午11:35:43 
* @version 1.0 * @parameter  * @since  
* @return  
*/
public interface CarsClaimMapper {

	int saveReport(Report report);

	List<Report> getReports();

	int updateReportState(Report report);

	int deleteReport(int rep_id);

	int saveCarDamage(CarDamage carDamage);

	int updataReportsehngfen(Report report);


	Report getReportByRe(Report report);

	Report getReportByUserId(Integer user_id);

	void saveUploadpictures(CarDamage carDamage);

	CarUser getCarUserByUser(CarUser carUser);

	Report getReport();

	List<Report> getReportList();

	void deleteByCarUser(Integer user_id);

	int updateReport(Report report);

	List<CarDamage> getImagesByUserId(Integer user_id);

	void deleteByCar_damage(Integer user_id);


	
}

