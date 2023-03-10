package com.itkey.service;

import java.util.List;

import com.itkey.vo.userVO;

public interface userService {
	List<userVO> readAll();
	int create(userVO vo);
	int update(userVO vo);
	int delete(userVO vo);
	userVO read_login(String phone);
}
