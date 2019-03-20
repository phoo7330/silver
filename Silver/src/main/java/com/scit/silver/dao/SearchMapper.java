package com.scit.silver.dao;

import java.util.ArrayList;

import com.scit.silver.vo.SilverSearch;

public interface SearchMapper {

	public ArrayList<SilverSearch> selectmap(int type);
	
	public ArrayList<SilverSearch> selectmap2(ArrayList<SilverSearch> SilverSearch);
}
