package com.scit.silver.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scit.silver.vo.test;

@Repository
public class testdao {

	@Autowired
	SqlSession session;

	public int insertTest(test test) {
		int result = 0;
		
		testMapper mapper = session.getMapper(testMapper.class);
		result = mapper.insertTest(test);
		
		return result;
	}
	
}
