package com.scit.silver;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.scit.silver.dao.SearchDAO;
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
	@RequestMapping(value = "/selectmap2", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<SilverSearch> selectmap2(HttpServletRequest request,
			String maptestJSON) {
		ArrayList<SilverSearch> result = null;
		
		try {
		//System.out.println(maptestJSON);
		JSONParser jsonParse = new JSONParser();
		//JSONParse에 json데이터를 넣어 파싱한 다음 JSONObject로 변환한다. 
		//JSONObject에서 PersonsArray를 get하여 JSONArray에 저장한다. 
		JSONArray mapArray = (JSONArray) jsonParse.parse(maptestJSON);
		ArrayList<SilverSearch> maptest = mapArray;
		
		
		result = dao.selectmap2(maptest);
		System.out.println(result);
		return result;
		} catch(ParseException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
}
