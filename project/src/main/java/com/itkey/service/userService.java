package com.itkey.service;

import com.itkey.vo.userVO;

public interface userService {

	//phone check
	userVO loginPhCheck(String loginPH1);
	//pw check
	userVO loginPwCheck2(userVO loginPW);
	
	
	

}
