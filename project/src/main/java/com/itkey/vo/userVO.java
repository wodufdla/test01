package com.itkey.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@ToString
@Data
@NoArgsConstructor
public class userVO {
	
	public userVO() {
		// TODO Auto-generated constructor stub
	}

	// 회원관리
	private String password;
	private String email;
	private String phone;
	private Date join_date;
	private boolean withdrawal;
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public boolean isWithdrawal() {
		return withdrawal;
	}
	public void setWithdrawal(boolean withdrawal) {
		this.withdrawal = withdrawal;
	}
	
	
		
	
}
