package com.ustglobal.junit.spring;

import static org.hamcrest.CoreMatchers.instanceOf;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;

import java.util.Date;

import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import org.junit.runner.RunWith;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.test.context.ContextConfiguration;

import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import org.springframework.test.context.support.AnnotationConfigContextLoader;

import com.ustglobal.junit.spring.domain.Order;

import com.ustglobal.junit.spring.main.AppConfig;

import com.ustglobal.junit.spring.service.SampleService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = AppConfig.class, loader =
   AnnotationConfigContextLoader.class)

public class JUnitSpringExample {
	
	@Autowired
	private SampleService sampleService;
	private Order newOrder;
	
	@Before
	public void init() {
		System.out.println("-----> Before each test <-----");
		newOrder = new Order(100, "INITIATED",
				"123BNM", "Gardening Items", new Date());
	}
	
	@BeforeClass
	public static void setUp() {
		System.out.println("-----> SETUP <-----");
	}
	
	@Test
	public void testSampleServiceClassVerification() {
		assertEquals("class com.ustglobal.junit.spring.service.SampleServiceImpl"
				,this.sampleService.getClass().toString());
	}
	
	@Test
	public void testSampleServiceGetAccountDescription() {
		//	Check if the return description has a 'Description:' string.
		assertTrue(sampleService.getOrderDescription().contains(""));
	}
	
	@Test
	public void testSampleServiceGetAccountCode() {
		//	Check if the return description has a 'Code:' string.
		assertTrue(sampleService.getOrderStringCode().contains("Code:"));
	}
	
	@Test
	public void testSampleServiceCreateNewOrder() {
		if(newOrder != null) {
			assertThat(sampleService.createOrder(newOrder), 
					instanceOf(Order.class));
			assertNotNull("Security is null", 
					newOrder.getSecurityCode());
			assertNotNull("Description is null", 
					newOrder.getDescription());
		}
		
		assertNotNull("New Order is null", newOrder);
		
	}
	
	@Test
	public void testSampleServiceGetOrder() {
		
		Order existingOrder = sampleService.getOrder(100);

		if(existingOrder != null) {
			assertThat(sampleService.getOrder(0), instanceOf(Order.class));
			assertNotNull("Security isn't null", existingOrder.getSecurityCode());
			assertNotNull("Description isn't null", existingOrder.getDescription());
		}
		
		assertNotNull("Object is not null", existingOrder);
	}
	
	@Test
	public void testSampleServiceGetId() {
		assertEquals(100, newOrder.getOrderId());
	}
	
	@AfterClass
	public static void afterTest() {
		System.out.println("-----> DESTROY <-----");
	}
}
