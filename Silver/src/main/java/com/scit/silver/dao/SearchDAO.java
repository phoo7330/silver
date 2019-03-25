package com.scit.silver.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scit.silver.vo.Details;
import com.scit.silver.vo.SilverSearch;

@Repository
public class SearchDAO {

	@Autowired
	SqlSession session;

	public ArrayList<SilverSearch> selectmap(int type){
		ArrayList<SilverSearch> result = null;
		
		SearchMapper mapper = session.getMapper(SearchMapper.class);
		
		result = mapper.selectmap(type);

		return result;
	}
	
	public ArrayList<SilverSearch> selectmap2(ArrayList<SilverSearch> SilverSearch){
		ArrayList<SilverSearch> result = null;
		
		SearchMapper mapper = session.getMapper(SearchMapper.class);
		
		result = mapper.selectmap2(SilverSearch);

		return result;
	}

	public ArrayList<Details> selectmap3(int type){
		ArrayList<Details> result = null;
		
		SearchMapper mapper = session.getMapper(SearchMapper.class);
		
		result = mapper.selectmap3(type);

		return result;	
	}
}
