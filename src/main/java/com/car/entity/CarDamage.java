package com.car.entity;
/** 
* @author  作者 E-mail:尹国庆
* @date 创建时间：2016年9月2日 上午10:10:53 
* @version 1.0 * @parameter  * @since  
* @return  
*/
public class CarDamage {

	/**
	 * 图片id
	 */
	private int cd_id;
	/**
	 * 图片路径
	 */
	private String cd_image_url;
	/**
	 * 报案id
	 */
	private int user_id;
	
	
	public int getCd_id() {
		return cd_id;
	}
	public String getCd_image_url() {
		return cd_image_url;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setCd_id(int cd_id) {
		this.cd_id = cd_id;
	}
	public void setCd_image_url(String cd_image_url) {
		this.cd_image_url = cd_image_url;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public CarDamage(int cd_id, String cd_image_url, int user_id) {
		super();
		this.cd_id = cd_id;
		this.cd_image_url = cd_image_url;
		this.user_id = user_id;
	}
	public CarDamage() {
		super();
	}
	@Override
	public String toString() {
		return "CarDamage [cd_id=" + cd_id + ", cd_image_url=" + cd_image_url + ", user_id=" + user_id + "]";
	}
	
	
	

	
}

