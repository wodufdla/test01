package com.itkey.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itkey.dao.userDAO;
import com.itkey.vo.userVO;

@Service
public class userServiceImpl implements userService {
	private static final Logger log = LoggerFactory.getLogger(userServiceImpl.class);
	
	//dao 갖고 오기
	@Resource(name="userDAO") userDAO ud;

	//폰번호 체크
	@Override
	public userVO loginPhCheck(String loginPH1) {
		// TODO Auto-generated method stub
		userVO uv = ud.loginPhCheck(loginPH1);
		return uv;
	}

	//비밀번호 체크
	@Override
	public userVO loginPwCheck2(userVO loginPW) {
		// TODO Auto-generated method stub
		
		userVO uv = ud.loginPwCheck(loginPW);
		return uv;
	}
	
	
}
