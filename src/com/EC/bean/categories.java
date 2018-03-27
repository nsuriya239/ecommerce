package com.EC.bean;

public class categories {
  private int coun_id;
  private String cat_name;
  
  public categories() {
	// TODO Auto-generated constructor stub
}

public categories(int coun_id, String cat_name) {
	this.coun_id = coun_id;
	this.cat_name = cat_name;
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
  
  
}
