package com.EC.bean;

public class catalog {

	private int coun_id;
	private String country;
	
	public catalog() {
		// TODO Auto-generated constructor stub
	}

	public catalog(int coun_id, String country) {
		this.coun_id = coun_id;
		this.country = country;
	}

	public int getCoun_id() {
		return coun_id;
	}

	public void setCoun_id(int coun_id) {
		this.coun_id = coun_id;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
	
	
}
