package com.itkey.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itkey.dao.OrderDAO;

@Service
public class OrderServiceImple implements OrderService {
	private static final Logger log = LoggerFactory.getLogger(OrderServiceImple.class);
	
	@Autowired
	private OrderDAO orderDAO;
	
	
}
