package com.car.entity;

public class Order {
	private Integer order_id;
	private String order_uuid;
	private String order_time;
	private double order_price;
	public Integer getOrder_id() {
		return order_id;
	}
	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}
	public String getOrder_uuid() {
		return order_uuid;
	}
	public void setOrder_uuid(String order_uuid) {
		this.order_uuid = order_uuid;
	}
	public String getOrder_time() {
		return order_time;
	}
	public void setOrder_time(String order_time) {
		this.order_time = order_time;
	}
	public double getOrder_price() {
		return order_price;
	}
	public void setOrder_price(double order_price) {
		this.order_price = order_price;
	}
	public Order() {
		super();
	}
	public Order(Integer order_id, String order_uuid, String order_time, double order_price) {
		super();
		this.order_id = order_id;
		this.order_uuid = order_uuid;
		this.order_time = order_time;
		this.order_price = order_price;
	}
	@Override
	public String toString() {
		return "Order [order_id=" + order_id + ", order_uuid=" + order_uuid + ", order_time=" + order_time
				+ ", order_price=" + order_price + "]";
	}
}
