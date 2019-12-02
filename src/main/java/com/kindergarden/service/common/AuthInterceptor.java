package com.kindergarden.service.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

//
public class AuthInterceptor extends HandlerInterceptorAdapter {
	private static final Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
	      logger.info("AuthInterceptor");
	      HttpSession session = request.getSession();
	      
	      if( session.getAttribute("userDto") == null ) {
	         logger.info("Need to login!!");
	         
	         String ajaxHeader = request.getHeader("AJAX");
	         
	         if(ajaxHeader != null && ajaxHeader.contentEquals("true")) {

	            response.setContentType("application/json");
	            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED); //ajax 에러 쪽으로 넘어와서 
	            response.getWriter().write("timeout");//timeout 받음 -> board ajax 부분에 error 부분 보면 timeout인지 확인
	            
	         }else {

	            response.sendRedirect("/login");
	         }

	         return false;
	      }
	      
	      return true;
	   }
}


