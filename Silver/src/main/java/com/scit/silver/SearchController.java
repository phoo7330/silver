package com.scit.silver;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.scit.silver.dao.SearchDAO;
import com.scit.silver.vo.Member;
import com.scit.silver.vo.SilverSearch;

@Controller
public class SearchController {


	@Autowired
	SearchDAO dao;
	
	@RequestMapping(value = "/selectmap", method = { RequestMethod.POST, RequestMethod.GET })
	public @ResponseBody ArrayList<SilverSearch> selectmap() {
		
		ArrayList<SilverSearch> result = dao.selectmap();
		
		return result;
	}

	
}
