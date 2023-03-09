package com.itkey.dao;

import com.itkey.vo.userVO;

public interface userDAO {
	//폰번호 체크
	userVO loginPhCheck(String loginPH1);
	//비밀번호 체크
	userVO loginPwCheck(userVO loginPW);
	
}
