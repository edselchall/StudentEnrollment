package com.ustglobal.junit.spring.service;

import com.ustglobal.junit.spring.domain.Order;

public interface SampleService {

	public String getOrderDescription();
	public String getOrderStringCode();
	public Order getOrder(int id);
	public Order createOrder(Order order);
	
	
}
