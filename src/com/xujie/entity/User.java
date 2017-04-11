package com.xujie.entity;

public class User {
	private int userid;
	private String username;
	private String password;
	private String sex;
	private String address;
	private String phone;
	private String email;
	private String check;
	private String answer;
	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
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
	public String getSex(){
		return sex;
	}
	
	public void setSex(String sex){
		this.sex=sex;
	}
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress(){
		return address;
	}
	public void setAddress(String address){
		this.address=address;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getCheck(){
		return check;
	}
	
	public void setCheck(String check){
		this.check=check;
	}
	
	public String getAnswer(){
		return answer;
	}
	
	public void setAnswer(String answer){
		this.answer=answer;
	}

}
