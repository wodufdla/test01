package com.itkey.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itkey.vo.userVO;

@Repository
public class userDAOImpl implements userDAO {
	private static final Logger log = LoggerFactory.getLogger(userDAOImpl.class);
	private static final String NAMESPACE = "UserMapper";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<userVO> selectAll() {
		log.info("selectAll() 호츌");
		return sqlSession.selectList(NAMESPACE + ".select_all");
	}

	@Override
	public int insert(userVO vo) {
		log.info("insert() 호출");
		return sqlSession.insert(NAMESPACE + ".insert" , vo);
	}

	@Override
	public int update(userVO vo) {
		log.info("update() 호출");
		return sqlSession.update(NAMESPACE + ".update", vo);
	}

	@Override
	public int delete(userVO vo) {
		log.info("delete() 호출");
		return sqlSession.update(NAMESPACE + ".delete", vo);
	}

	@Override
	public userVO select_by_phone(String phone) {
		log.info("select_by_phone() 호출");
		return sqlSession.selectOne(NAMESPACE + ".select_by_phone", phone);
	}
}
