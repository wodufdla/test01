package com.itkey.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itkey.dao.serviceDAO;

@Service
public class serviceServiceImpl implements serviceService {
	private static final Logger log = LoggerFactory.getLogger(serviceServiceImpl.class);
	
	@Autowired
	private serviceDAO serviceDAO;
	
	
}
