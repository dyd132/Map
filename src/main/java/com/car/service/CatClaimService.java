package com.car.service;

import java.util.List;

import com.car.entity.CarDamage;
import com.car.entity.CarUser;
import com.car.entity.Report;

/** 
* @author  作者 E-mail:尹国庆
* @date 创建时间：2016年9月2日 上午10:24:16 
* @version 1.0 * @parameter  * @since  车险理赔
* @return  
*/
public interface CatClaimService {

	/**
	 * 报案
	 */
	public int saveReport(Report report);
	
	/**
	 * 管理员查看报案
	 * 
	 */
	public List<Report> getReports();
	
	/**
	 * 修改报案状态(这个方法可以用好几次)
	 */
	public int updateReportState(Report report);
	/**
	 * 提交材料
	 * 上传图片，添加报案出事地点，出事时间等...
	 */
	public int  saveUploadpictures(List<CarDamage> carDamages,Report report);
	
	/**
	 * 成功后生成成功凭证码
	 */
	public int updateauthentication(Report report);

	/**
	 * 
	 * 根据身份证信息去数据库查询是否报案
	 * @param i
	 * @return
	 */

	public Report getReportByRe(Report report);

	/**
	 *根据用户的id查询报案
	 * @param user_id
	 * @return
	 */
	public Report getReportByUserId(Integer user_id);

	
	/**
	 * 
	 * 添加图片到数据库
	 * @param carDamage
	 */
	public void saveUploadpictures(CarDamage carDamage);

	/**
	 * 
	 * 根据用户去数据库查询是否存在
	 * @param carUser
	 * @return
	 */
	public CarUser getCarUserByUser(CarUser carUser);

	/**
	 * 获得报案信息
	 * @return
	 */
	public Report getReport();

	public List<Report> getReportList();

	public void deleteByCarUser(Integer user_id);

	public int updateReport(Report report);

	public List<CarDamage> getImagesByUserId(Integer user_id);

	public void deleteReport(Integer user_id);

}

