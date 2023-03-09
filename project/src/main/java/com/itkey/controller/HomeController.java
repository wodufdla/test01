package com.itkey.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itkey.vo.userVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "main";
	}
	
	@RequestMapping("/fortune")
	public String fortune(Model model) {		
		return "fortune";
	}
	
	@RequestMapping("/login")
	public String login(Model model) {
		return "login";
	}
	//login controller 경로 테스트
/*	@ResponseBody
	@RequestMapping("/loginCheck")
	public String loginCheck(userVO uv, Model model) {
		
		//폰 번호와 비번 갖고 오기
		String LoginPH1 = uv.getPhone();
		String LoginPW = uv.getPassword();
		
		System.out.println("LoginPh12:"+LoginPH1);
		System.out.println("LoginPw12:"+LoginPW);
		return "1";
	}*/
	
}
