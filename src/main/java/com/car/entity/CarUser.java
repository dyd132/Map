package com.car.entity;

public class CarUser {

	
	private Integer user_id;
	private String user_name;
	private String user_pwd;
	private Integer user_lock;
	private Integer user_state;
	private String user_mail;
	public Integer getUser_id() {
		return user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public Integer getUser_lock() {
		return user_lock;
	}
	public Integer getUser_state() {
		return user_state;
	}
	public String getUser_mail() {
		return user_mail;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public void setUser_lock(Integer user_lock) {
		this.user_lock = user_lock;
	}
	public void setUser_state(Integer user_state) {
		this.user_state = user_state;
	}
	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}
	public CarUser(Integer user_id, String user_name, String user_pwd, Integer user_lock, Integer user_state,
			String user_mail) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_pwd = user_pwd;
		this.user_lock = user_lock;
		this.user_state = user_state;
		this.user_mail = user_mail;
	}
	public CarUser() {
		super();
	}
	@Override
	public String toString() {
		return "CarUser [user_id=" + user_id + ", user_name=" + user_name + ", user_pwd=" + user_pwd + ", user_lock="
				+ user_lock + ", user_state=" + user_state + ", user_mail=" + user_mail + "]";
	}
	
}
