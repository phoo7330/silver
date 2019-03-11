package com.scit.silver.dao;

import com.scit.silver.vo.Member;
import com.scit.silver.vo.test;

public interface MemberMapper {
	
	public int insertTest(test test);
	
	public int insertMember(Member member);
	
	public Member selectMember(Member member);
}
