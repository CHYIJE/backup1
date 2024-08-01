package com.tenco.filters;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;

/*	
 * 1.Filter 구현
 * 2. URL 패턴 설정 (web.xml 파일에서 설정할 예정)
 */
public class IPBlockFilter implements Filter{
	
	// 192.168.0.48 
	
	// 차단할 IP 대역의 접두사
	private static final String BLOCKED_IP_PREFIX = "192.186.0.131";
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("IPBlockFilter 초기화");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// 전처리 - 요청자의 IP를 확인
		// getRemoteAddr() 아이피를 받아오는 메서드
		String remoteIP = request.getRemoteAddr();
		System.out.println("Request from IP : " + remoteIP);
		
		// 차단 시킬 코드 작성
		if(remoteIP.startsWith(BLOCKED_IP_PREFIX)) {
			response.setContentType("text/plain; charset=UTF-8");
			response.getWriter().println("Access Denied !!");
			response.getWriter().println("빛이 당신을 태울 것입니다!");
			return;
		}
		
		chain.doFilter(request, response);
	}

}
