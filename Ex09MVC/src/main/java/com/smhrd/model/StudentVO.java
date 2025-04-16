package com.smhrd.model;

public class StudentVO {
	private String name;
	private String major;
	public String getName() {
		return name;
	}
	public String getMajor() {
		return major;
	}
	public String getTel() {
		return tel;
	}
	private String tel;
	public StudentVO(String name, String major, String tel) {
		super();
		this.name = name;
		this.major = major;
		this.tel = tel;
	}
}
