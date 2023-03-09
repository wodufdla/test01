package com.itkey.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itkey.vo.userVO;

@Repository("userDAO")
public class userDAOImpl implements userDAO {
	private static final Logger log = LoggerFactory.getLogger(userDAOImpl.class);
	private static final String NAMESPACE = "UserMapper";
	//sql불러오기
	@Autowired
	private SqlSessionTemplate sqlSession;

	//폰번호 체크
	@Override
	public userVO loginPhCheck(String loginPH1) {
		// TODO Auto-generated method stub
		userVO uv=sqlSession.selectOne("selectPhone", loginPH1);
		
		return uv;
	}
	
	//비밀번호 체크
	@Override
	public userVO loginPwCheck(userVO loginPw) {
		// TODO Auto-generated method stub
		
		userVO uv=sqlSession.selectOne("selectPw", loginPw);
		return uv;
	}
	
	
	
}
