package com.itkey.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itkey.service.userService;
import com.itkey.vo.userVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	//서비스
	@Autowired
	userService us;
	
	
	//로그인 기능
	//로그인 화면 접속
	@ResponseBody
	@PostMapping("/loginCheck")
	public int loginCheck2(userVO uv, Model model, HttpServletRequest request) {
		//세션 값 갖고 오기
		HttpSession session = request.getSession();
		
		//폰 번호와 비번 갖고 오기
		String LoginPH1 = uv.getPhone();
		String LoginPW = uv.getPassword();
		
		// 아이디나 비번이 비어 있을시
		if (LoginPH1.equals("") || LoginPW.equals("")) {
			System.out.println("nullid, nullpw");
			return 0;
		} else {

			// 밑은 아이디 비번 모두 일치시 갖고 온다.
			userVO LoginPH2 = us.loginPhCheck(LoginPH1);
			if (LoginPH2 == null) {
				System.out.println("nullloginph2이다.");
				// 아이디가 존재 안한다.
				return 1;
			} else {
				userVO LoginPH3 = us.loginPwCheck2(uv);
				if (LoginPH3 == null) {
					System.out.println("mdto NULL3");
					// 비밀번호 일치 안함
					return 2;
				} else {
					// 로그인 성공
					// 삭제된 회원인지 확인여부
					if (LoginPH3.isWithdrawal() == true) {
						return 4;
					} else {
						//세션 추가 및 정상 로그인
						session.setAttribute("session_phone", uv.getPhone());
						session.setAttribute("session_password", uv.getPassword());
						session.setAttribute("session_email", uv.getEmail());
						session.setAttribute("session_join", uv.getJoin_date());
						session.setAttribute("session_withdrawal", uv.isWithdrawal());

						return 3;
					}
				}
			}
		}
	}
	//로그인 기능
	
	//로그out 화면 접속
	@RequestMapping("/logOut")
	public String logOut(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:login";
	}
	
}
