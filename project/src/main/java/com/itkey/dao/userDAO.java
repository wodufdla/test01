package com.itkey.dao;

import java.util.List;

import com.itkey.vo.userVO;

public interface userDAO {
	List<userVO> selectAll();
	int insert(userVO vo);
	int update(userVO vo);
	int delete(userVO vo);
	userVO select_login(String phone);
}
