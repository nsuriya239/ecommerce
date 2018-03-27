 package com.EC.bean;

import java.sql.Blob;

public class products {

	private int oid;
	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	private int pid;
	private String cat_name;
	private int coun_id;
	private String scat_name;
	private String name;
	private Blob p_image;
	private String p_desc;
	private int p_quantity;
	private double p_price;
	private int mid;
	private int p_size;
	private String status;
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getP_size() {
		return p_size;
	}

	public void setP_size(int p_size) {
		this.p_size = p_size;
	}

	public products() {
		// TODO Auto-generated constructor stub
	}

	public products(int pid, String cat_name, int coun_id, String scat_name, String name, Blob p_image, String p_desc,
			int p_quantity, double p_price, int mid) {
		this.pid = pid;
		this.cat_name = cat_name;
		this.coun_id = coun_id;
		this.scat_name = scat_name;
		this.name = name;
		this.p_image = p_image;
		this.p_desc = p_desc;
		this.p_quantity = p_quantity;
		this.p_price = p_price;
		this.mid = mid;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getCat_name() {
		return cat_name;
	}

	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}

	public int getCoun_id() {
		return coun_id;
	}

	public void setCoun_id(int coun_id) {
		this.coun_id = coun_id;
	}

	public String getScat_name() {
		return scat_name;
	}

	public void setScat_name(String scat_name) {
		this.scat_name = scat_name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Blob getP_image() {
		return p_image;
	}

	public void setP_image(Blob p_image) {
		this.p_image = p_image;
	}

	public String getP_desc() {
		return p_desc;
	}

	public void setP_desc(String p_desc) {
		this.p_desc = p_desc;
	}

	public int getP_quantity() {
		return p_quantity;
	}

	public void setP_quantity(int p_quantity) {
		this.p_quantity = p_quantity;
	}

	public double getP_price() {
		return p_price;
	}

	public void setP_price(double p_price) {
		this.p_price = p_price;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}
	
	
	
}
