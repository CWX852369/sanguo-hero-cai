package com.cwx.pojo;

public class Org_user {
	private String id ;
    private String 组织id;
    private String 编号;
    private String 职位;
    private Brand brand;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String get组织id() {
		return 组织id;
	}
	public void set组织id(String 组织id) {
		this.组织id = 组织id;
	}
	public String get编号() {
		return 编号;
	}
	public void set编号(String 编号) {
		this.编号 = 编号;
	}
	public String get职位() {
		return 职位;
	}
	public void set职位(String 职位) {
		this.职位 = 职位;
	}
	public Brand getBrand() {
		return brand;
	}
	public void setBrand(Brand brand) {
		this.brand = brand;
	}
	@Override
	public String toString() {
		return "org_user [id=" + id + ", 组织id=" + 组织id + ", 编号=" + 编号 + ", 职位=" + 职位 + ", brand=" + brand + "]";
	}
	
}