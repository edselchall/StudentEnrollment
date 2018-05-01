package com.ustglobal.junit.spring.service;

import java.util.Date;
import java.util.Random;

import com.ustglobal.junit.spring.domain.Order;

public class SampleServiceImpl implements SampleService {

	public String getOrderDescription() {
		Order existingOrder = new Order(10, "INITIATED",
				"123BNM", "Gardening Items", new Date());
		return "Description: " + existingOrder.getDescription();
	}

	public String getOrderStringCode() {
		Order existingOrder = new Order(10, "INITIATED",
				"123BNM", "Gardening Items", new Date());
		return "Account Code: " + existingOrder.getSecurityCode();
	}
	
	public Order createOrder(Order order) {
		Order newOrder = new Order(10, "INITIATED",
				"123BNM", "Gardening Items", new Date());
		return newOrder;
	}
	
	public Order getOrder(int id) {
		Order newOrder = new Order(id,
				"INITIATED", "123BNM", "Gardening Items",
				new Date());
		return newOrder;
	}
	
	

}
