package com.EC.bean;

public class user {

	private int usid;
	private String uname;
	private String upwd;
	private String umblno;
	private String ufname;
	
	public user() {
		// TODO Auto-generated constructor stub
	}

	public user(int usid, String uname, String upwd, String umblno, String ufname) {
		this.usid = usid;
		this.uname = uname;
		this.upwd = upwd;
		this.umblno = umblno;
		this.ufname = ufname;
	}

	public int getUsid() {
		return usid;
	}

	public void setUsid(int usid) {
		this.usid = usid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	public String getUmblno() {
		return umblno;
	}

	public void setUmblno(String umblno) {
		this.umblno = umblno;
	}

	public String getUfname() {
		return ufname;
	}

	public void setUfname(String ufname) {
		this.ufname = ufname;
	}
	
	
	
}
