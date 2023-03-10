package com.itkey.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itkey.dao.userDAO;
import com.itkey.vo.userVO;

@Service
public class userServiceImpl implements userService {
	private static final Logger log = LoggerFactory.getLogger(userServiceImpl.class);
	
	@Autowired
	private userDAO userDAO;

	@Override
	public List<userVO> readAll() {
		log.info("read() 호출");
		return userDAO.selectAll();
	}

	@Override
	public int create(userVO vo) {
		log.info("create() 호출 : vo = " + vo.toString());
		return userDAO.insert(vo);
	}

	@Override
	public int update(userVO vo) {
		log.info("update() 호출 : vo = " + vo.toString());
		return userDAO.update(vo);
	}

	@Override
	public int delete(userVO vo) {
		log.info("delete() 호출 : vo = " + vo.toString());
		return userDAO.delete(vo);
	}

	@Override
	public userVO read_login(String phone) {
		log.info("read_login() 호출 : phone = " + phone);
		return userDAO.select_login(phone);
	}
	
	
}
