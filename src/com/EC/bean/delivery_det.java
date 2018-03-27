package com.EC.bean;

public class delivery_det {

	private String uname;
	private String name;
	private String address1;
	private String address2;
	private String city;
	private String state;
	private int pincode;
	private long mblno;
	
	public delivery_det() {
		// TODO Auto-generated constructor stub
	}

	public delivery_det(String uname, String name, String address1, String address2, String city, String state,
			int pincode, long mblno) {
		this.uname = uname;
		this.name = name;
		this.address1 = address1;
		this.address2 = address2;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
		this.mblno = mblno;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "delivery_det [uname=" + uname + ", name=" + name + ", address1=" + address1 + ", address2=" + address2
				+ ", city=" + city + ", state=" + state + ", pincode=" + pincode + ", mblno=" + mblno + "]";
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public long getMblno() {
		return mblno;
	}

	public void setMblno(long mblno) {
		this.mblno = mblno;
	}
	
	
	
}
