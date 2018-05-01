package com.ustglobal.junit.spring.domain;

import java.util.Date;

public class Order {

	public int orderId;
	public String orderStatus;
	public String securityCode;
	public String description;
	public Date orderDate;

	public Order(int orderId, String orderStatus, String securityCode, String description, Date orderDate) {
		super();
		this.orderId = orderId;
		this.orderStatus = orderStatus;
		this.securityCode = securityCode;
		this.description = description;
		this.orderDate = orderDate;
	}

	public int getOrderId() {
		return orderId;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public String getSecurityCode() {
		return securityCode;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public String getDescription() {
		return description;
	}

}
