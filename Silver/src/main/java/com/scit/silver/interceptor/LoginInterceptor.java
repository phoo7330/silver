package com.scit.silver.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();

		String contextPath = request.getContextPath();
		String loginId = (String) session.getAttribute("loginId");
		String usertype = (String) session.getAttribute("usertype");
		
		String requestURI = request.getRequestURI();
		String uri = requestURI.substring(requestURI.lastIndexOf("/")+1);
		
		// 일반사용자만 가능한 요청
		String nomalURI ="";
		
		// 구직자만 가능한 요청
		String workerURI ="";
		
		// 기관관리자만 가능한 요청
		String teacherURI = "registStudent duplicateCheck score registScore retrieveAll existScore retrieveById";
		
		// 사이트관리자만 가능한 요청
		String studentURI = "modifyPassword retrieveScore";
		
		
		if(loginId == null) {
			response.sendRedirect(contextPath + "/login");  // 주소 표시줄 확인

			return false;
		} else {
			if(usertype.equals("student")  && teacherURI.contains(uri) || 
				usertype.equals("teacher") && studentURI.contains(uri)) {
				
				//session.removeAttribute("loginId"); 세션에 있는값 지우기
				
				
				session.setAttribute("msg", "현재 아이디로 해당 작업을 할 수 없습니다. 다시 로그인 하세요.");
				
				response.sendRedirect(contextPath + "/login"); 
				
				return false;
				
			} else {
				return true;
			}
			
		}
	}
}
