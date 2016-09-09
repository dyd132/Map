package com.car.entity;

import java.util.List;

/** 
* @author  作者 E-mail:尹国庆
* @date 创建时间：2016年9月2日 上午9:54:33 
* @version 1.0 * @parameter  * @since  
* @return  
*/
public class Report {

	/**
	 * 报案id
	 */
	private int rep_id;
	/**
	 * 保单号
	 */
	private int rep_policy_id;
	/**
	 * 受保人
	 */
	private String rep_insured;
	/**
	 * 身份证
	 */
	private String rep_identity;
	/**
	 * 报案时间
	 */
	private String rep_date;
	/**
	 * 用户id
	 */
	private int user_id;
	/**
	 * 出事时间
	 */
	private String rep_happened_date;
	/**
	 * 出事地点
	 */
	private String rep_happened_place;
	/**
	 * 出事原因
	 */
	private String rep_happened_reason;
	/**
	 * 报案状态
	 */
	private int rep_state;
	/**
	 * 一个报案上传多个图片
	 */
	private List<CarDamage> CarDamages;
	
	/**
	 * 成功后生成成功凭证
	 */
	private String reu_authentication;
	
	public Report(int rep_id, int rep_policy_id, String rep_insured, String rep_identity, String rep_date, int user_id,
			String rep_happened_date, String rep_happened_place, String rep_happened_reason, int rep_state) {
		super();
		this.rep_id = rep_id;
		this.rep_policy_id = rep_policy_id;
		this.rep_insured = rep_insured;
		this.rep_identity = rep_identity;
		this.rep_date = rep_date;
		this.user_id = user_id;
		this.rep_happened_date = rep_happened_date;
		this.rep_happened_place = rep_happened_place;
		this.rep_happened_reason = rep_happened_reason;
		this.rep_state = rep_state;
	}
	//无参
	public Report() {
		
	}
	public int getRep_id() {
		return rep_id;
	}
	public void setRep_id(int rep_id) {
		this.rep_id = rep_id;
	}
	public int getRep_policy_id() {
		return rep_policy_id;
	}
	public void setRep_policy_id(int rep_policy_id) {
		this.rep_policy_id = rep_policy_id;
	}
	public String getRep_insured() {
		return rep_insured;
	}
	public void setRep_insured(String rep_insured) {
		this.rep_insured = rep_insured;
	}
	public String getRep_identity() {
		return rep_identity;
	}
	public void setRep_identity(String rep_identity) {
		this.rep_identity = rep_identity;
	}
	public String getRep_date() {
		return rep_date;
	}
	public void setRep_date(String rep_date) {
		this.rep_date = rep_date;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getRep_happened_date() {
		return rep_happened_date;
	}
	public void setRep_happened_date(String rep_happened_date) {
		this.rep_happened_date = rep_happened_date;
	}
	public String getRep_happened_place() {
		return rep_happened_place;
	}
	public void setRep_happened_place(String rep_happened_place) {
		this.rep_happened_place = rep_happened_place;
	}
	public String getRep_happened_reason() {
		return rep_happened_reason;
	}
	public void setRep_happened_reason(String rep_happened_reason) {
		this.rep_happened_reason = rep_happened_reason;
	}
	public int getRep_state() {
		return rep_state;
	}
	public void setRep_state(int rep_state) {
		this.rep_state = rep_state;
	}
	public List<CarDamage> getCarDamages() {
		return CarDamages;
	}
	public void setCarDamages(List<CarDamage> carDamages) {
		CarDamages = carDamages;
	}
	public String getReu_authentication() {
		return reu_authentication;
	}
	public void setReu_authentication(String reu_authentication) {
		this.reu_authentication = reu_authentication;
	}
	@Override
	public String toString() {
		return "Report [rep_id=" + rep_id + ", rep_policy_id=" + rep_policy_id + ", rep_insured=" + rep_insured
				+ ", rep_identity=" + rep_identity + ", rep_date=" + rep_date + ", user_id=" + user_id
				+ ", rep_happened_date=" + rep_happened_date + ", rep_happened_place=" + rep_happened_place
				+ ", rep_happened_reason=" + rep_happened_reason + ", rep_state=" + rep_state + ", CarDamages="
				+ CarDamages + ", reu_authentication=" + reu_authentication + "]";
	}
	
	
	
}

