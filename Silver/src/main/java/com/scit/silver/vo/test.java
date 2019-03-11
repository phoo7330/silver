package com.scit.silver.vo;

public class test {

	private String id;
	private String pw;
	public test(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}
	public test() {
		super();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	@Override
	public String toString() {
		return "test [id=" + id + ", pw=" + pw + "]";
	}
	
	
}
