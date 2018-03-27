package com.EC.bean;

public class order_det {

	private int ord_id;
	private int pid;
	private int p_qty;
	private String uname;
	private int p_size;
	private String status;
	
	public order_det() {
		// TODO Auto-generated constructor stub
	}

	public order_det(int ord_id, int pid, int p_qty, String uname, int p_size,String status) {
		this.ord_id = ord_id;
		this.pid = pid;
		this.p_qty = p_qty;
		this.uname = uname;
		this.p_size = p_size;
		this.status=status;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getOrd_id() {
		return ord_id;
	}

	public void setOrd_id(int ord_id) {
		this.ord_id = ord_id;
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
