package com.itkey.dao;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class serviceDAOImple implements serviceDAO {
	private static final Logger log = LoggerFactory.getLogger(serviceDAOImple.class);
	private static final String NAMESPACE = "ServiceMapper";
	
	@Autowired
	private SqlSession sqlSession;
}
