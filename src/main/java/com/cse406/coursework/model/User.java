package com.cse406.coursework.model;

import java.sql.SQLException;

import java.util.ArrayList;
import com.cse406.coursework.model.DB_Connection;

public class User {
	private String username;
	private String password;

	public User() {

	}

	public User(String username, String password) {

		this.username = username;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public Boolean check_password(String username, String password){
		System.out.println("EXECUTE SQL");
		try {
			DB_Connection conn = new DB_Connection();
			ArrayList<String[]> Response= conn.read_query("SELECT * FROM user WHERE username='"+username+"'",new String[]{"username","password"});
			
			if(Response.isEmpty()) {
				System.out.println("not found");
				return false;
			}else {
				System.out.println(Response.get(0)[1]);
				if(Response.get(0)[1].equals(password)) {
					return true;
				}
			}
			return false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	

}
