package com.itkey.dao;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class userDAOImple implements userDAO {
	private static final Logger log = LoggerFactory.getLogger(userDAOImple.class);
	private static final String NAMESPACE = "UserMapper";
	
	@Autowired
	private SqlSession sqlSession;
}