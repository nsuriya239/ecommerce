package com.EC.bean;

public class scat {

	private int coun_id;
	private String cat_name;
	private String scat_name;
	
	public scat() {
		// TODO Auto-generated constructor stub
	}

	public scat(int coun_id, String cat_name, String scat_name) {
		this.coun_id = coun_id;
		this.cat_name = cat_name;
		this.scat_name = scat_name;
	}

	public int getCoun_id() {
		return coun_id;
	}

	public void setCoun_id(int coun_id) {
		this.coun_id = coun_id;
	}

	public String getCat_name() {
		return cat_name;
	}

	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}

	public String getScat_name() {
		return scat_name;
	}

	public void setScat_name(String scat_name) {
		this.scat_name = scat_name;
	}
	
	
	
}
