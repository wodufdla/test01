package com.itkey.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itkey.dao.refundDAO;

@Service
public class refundServiceImple implements refundService {
	private static final Logger log = LoggerFactory.getLogger(refundServiceImple.class);
	
	@Autowired
	private refundDAO refundDAO;
	
	
}
