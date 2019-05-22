package com.Vo;

public class AdminLogin {
	private String UserId;
	private String Password;
	private int status;
	public String getUserId() {
		return UserId;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}

}
