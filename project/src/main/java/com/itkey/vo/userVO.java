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
public class userVO {

	// 회원관리
	private String user_id;
	private String password;
	private String email;
	private String phone;
	private Date joinDate;
	private boolean withdrawal;
		
	
}
