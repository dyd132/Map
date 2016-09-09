package com.car.entity;

public class User {
	
	private Integer user_id ;
	
	private String user_name ;
	
	private String user_pwd ;
	
	private Integer user_lock ; //用户是否被锁
	
	private Integer user_state ; //用户状态 (管理员或用户)
	
	private String user_mail ;
	
	public String getUser_mail() {
		return user_mail;
	}

	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public Integer getUser_lock() {
		return user_lock;
	}

	public void setUser_lock(Integer user_lock) {
		this.user_lock = user_lock;
	}

	public Integer getUser_state() {
		return user_state;
	}

	public void setUser_state(Integer user_state) {
		this.user_state = user_state;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_name=" + user_name + ", user_pwd=" + user_pwd + ", user_lock="
				+ user_lock + ", user_state=" + user_state + ", user_mail=" + user_mail + "]";
	}

}
