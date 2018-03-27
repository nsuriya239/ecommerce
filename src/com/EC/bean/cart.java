 package com.EC.bean;

public class cart {

	@Override
	public String toString() {
		return "cart [pid=" + pid + ", p_qty=" + p_qty + ", uname=" + uname + ", p_size=" + p_size + "]";
	}

	private int pid;
	private int p_qty;
	private String uname;
	private int p_size;
	
	public cart() {
		// TODO Auto-generated constructor stub
	}

	public cart(int pid, int p_qty, String uname, int p_size) {
		this.pid = pid;
		this.p_qty = p_qty;
		this.uname = uname;
		this.p_size = p_size;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getP_qty() {
		return p_qty;
	}

	public void setP_qty(int p_qty) {
		this.p_qty = p_qty;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public int getP_size() {
		return p_size;
	}

	public void setP_size(int p_size) {
		this.p_size = p_size;
	}
	
	
	
}
