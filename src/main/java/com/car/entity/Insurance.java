package com.car.entity;

public class Insurance {
	
	private Integer au_id;
	private String au_name;
	private String au_disc;
	private double au_price;
	private Integer au_suggest;
	public Integer getAu_id() {
		return au_id;
	}
	public void setAu_id(Integer au_id) {
		this.au_id = au_id;
	}
	public String getAu_name() {
		return au_name;
	}
	public void setAu_name(String au_name) {
		this.au_name = au_name;
	}
	public String getAu_disc() {
		return au_disc;
	}
	public void setAu_disc(String au_disc) {
		this.au_disc = au_disc;
	}
	public double getAu_price() {
		return au_price;
	}
	public void setAu_price(double au_price) {
		this.au_price = au_price;
	}
	public Integer getAu_suggest() {
		return au_suggest;
	}
	public void setAu_suggest(Integer au_suggest) {
		this.au_suggest = au_suggest;
	}
	public Insurance() {
		super();
	}
	public Insurance(Integer au_id, String au_name, String au_disc, double au_price, Integer au_suggest) {
		super();
		this.au_id = au_id;
		this.au_name = au_name;
		this.au_disc = au_disc;
		this.au_price = au_price;
		this.au_suggest = au_suggest;
	}
	@Override
	public String toString() {
		return "Insurance [au_id=" + au_id + ", au_name=" + au_name + ", au_disc=" + au_disc + ", au_price=" + au_price
				+ ", au_suggest=" + au_suggest + "]";
	}

}
