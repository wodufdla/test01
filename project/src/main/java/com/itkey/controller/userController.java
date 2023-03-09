package com.itkey.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itkey.service.userService;
import com.itkey.vo.userVO;

@Controller
@RequestMapping(value="/")
public class userController {
	private static final Logger log = LoggerFactory.getLogger(userController.class);
	
	@Autowired
	private userService userService;
	
	@GetMapping("/login")
	public void loginGET() {
		log.info("loginGET() 호출");
	}
	
	@PostMapping("/login")
	public String loginPOST(String phone, String password, HttpServletRequest request, RedirectAttributes reAttr) {
		log.info("loginPOST() 호출");
		
		userVO vo = userService.read_by_phone(phone);
		log.info("000000000000 vo = " + vo);
		
		if (vo == null) {
			reAttr.addFlashAttribute("login_result", "fail");
			log.info("11111111111111");
			return "redirect:/login";
		} else {
			reAttr.addFlashAttribute("login_result", "success");
			log.info("222222222222222");
			return "redirect:/login";
		}
	}
}
