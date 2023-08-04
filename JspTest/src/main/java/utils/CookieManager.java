package utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieManager {
	// 쿠키 생성하는 함수
	public static void makeCookie(HttpServletResponse response, String name,
		String value, int time) {
		Cookie cookie = new Cookie(name, value);
		cookie.setPath("/");
		cookie.setMaxAge(time);
		response.addCookie(cookie);
	}
	
	// 쿠키 읽어오는 함수
	public static String readCookie(HttpServletRequest request, String name) {
		String cookieValue = "";
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie c : cookies) {
				String cookieName = c.getName();
				if(cookieName.equals(name)) {
					if(cookieName.equals(name)) {
						cookieValue = c.getValue();
					}
				}
			}
		}
		return cookieValue;
	}
	
	// 쿠키 삭제하는 함수
	public static void deleteCookie(HttpServletResponse response, String name) {
		makeCookie(response, name, "", 0);
	}
	
	

}
