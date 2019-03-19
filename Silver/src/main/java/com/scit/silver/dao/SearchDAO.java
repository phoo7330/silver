package com.scit.silver.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scit.silver.vo.SilverSearch;

@Repository
public class SearchDAO {

	@Autowired
	SqlSession session;

	public ArrayList<SilverSearch> selectmap(){
		ArrayList<SilverSearch> result = null;
		
		SearchMapper mapper = session.getMapper(SearchMapper.class);
		
		result = mapper.selectmap();

		return result;
	}
	
	public ArrayList<SilverSearch> selectmap2(ArrayList<SilverSearch> SilverSearch){
		ArrayList<SilverSearch> result = null;
		
		SearchMapper mapper = session.getMapper(SearchMapper.class);
		
		result = mapper.selectmap2(SilverSearch);

		return result;
		
		
	}

	
}
