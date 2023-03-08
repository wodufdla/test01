package com.itkey.dao;

import com.itkey.vo.userVO;

public interface userDAO {

	userVO loginPhCheck(String loginPH1);

	userVO loginPwCheck(userVO loginPW);
	
}
