package com.itkey.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itkey.dao.userDAO;

@Service
public class userServiceImple implements userService {
	private static final Logger log = LoggerFactory.getLogger(userServiceImple.class);
	
	@Autowired
	private userDAO userDAO;
	
	
}
