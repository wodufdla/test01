package com.itkey.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itkey.dao.orderDAO;

@Service
public class orderServiceImpl implements orderService {
	private static final Logger log = LoggerFactory.getLogger(orderServiceImpl.class);
	
	@Autowired
	private orderDAO orderDAO;
	
	
}
