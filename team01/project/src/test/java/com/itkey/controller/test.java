package com.itkey.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class test {

	public static void main(String[] args) {

		try {
			// MySQL DB�� ����̷ε�
			Class.forName("com.mysql.cj.jdbc.Driver");
			// DB���� 
			Connection conn =
			DriverManager.getConnection("jdbc:mysql://itkey.asuscomm.com:3306/team01", "team01", "team01");
			System.out.println("mysql db ���� ����");
			
			// sql����
			
			// DB�������� 
			conn.close();
			System.out.println("mysql �������� ����");
		}
		catch(ClassNotFoundException error) {
			System.out.println("mysql driver �̼�ġ �Ǵ� ����̹� �̸� ����");
		}
		catch(SQLException error) {
			System.out.println("DB���ӿ���");
		}
		
	}
	
}
