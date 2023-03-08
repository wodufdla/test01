package com.itkey.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itkey.dao.questionDAO;

@Service
public class questionServiceImple implements questionService {
	private static final Logger log = LoggerFactory.getLogger(questionServiceImple.class);
	
	@Autowired
	private questionDAO questionDAO;
	
	
}
