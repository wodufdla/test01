package com.itkey.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@ToString
public class testVO {

	// 회원관리
	private String user_id;
	private String password;
	private String email;
	private String phone;
	private Date join_date;
	private boolean withdrawal;
	
	//주문관리
	private int order_no;
//  private String phone;
	private String order_cont;
	private String billing_key;
	private String price;
	private boolean status; 
	private Date rqst_time;
	private Date success_time; 
	private Date next_order_date; 
	private Date auto_order_date;
	
	// 환불관리
//	private int order_no;
//	private String phone; 
//	private int price;
//	private Date status;
//	private String rqst_time;
//	private String success_time;
	
	// 1:1문의
//	private String user_id;
	private String question;
	private Date question_time;
	private boolean answer_yn;
	private Date answer_time;
	
	// 서비스
	private int Service_no;
//	private int price;
	private String title;
	private String content;
	
	
}
