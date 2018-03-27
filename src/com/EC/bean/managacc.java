package com.EC.bean;

public class managacc {

	private String sfname;
	private String sname;
	private String spwd;
	private String smblno;
	private String m_type;
	private int mid;
	
	public managacc() {
		// TODO Auto-generated constructor stub
	}

	public managacc(String sfname, String sname, String spwd, String smblno, String m_type, int mid) {
		this.sfname = sfname;
		this.sname = sname;
		this.spwd = spwd;
		this.smblno = smblno;
		this.m_type = m_type;
		this.mid = mid;
	}

	public String getSfname() {
		return sfname;
	}

	public void setSfname(String sfname) {
		this.sfname = sfname;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSpwd() {
		return spwd;
	}

	public void setSpwd(String spwd) {
		this.spwd = spwd;
	}

	public String getSmblno() {
		return smblno;
	}

	public void setSmblno(String smblno) {
		this.smblno = smblno;
	}

	public String getM_type() {
		return m_type;
	}

	public void setM_type(String m_type) {
		this.m_type = m_type;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}
	
	
	
	
}
