package com.cwx.pojo;


public class Brand {
	private String 序号 ;
    private String 编号;
    private String 姓名;
    private String 字;
    private String space_name;
    private String email;
    private String password;
    private String avatar;
    private String 性别;
    public String sum;
    public String 姓氏;
    public String org_id;
    public String org_name;
    public String type;
   
	public String get序号() {
		return 序号;
	}
	public String getOrg_id() {
		return org_id;
	}
	public void setOrg_id(String org_id) {
		this.org_id = org_id;
	}
	public String getOrg_name() {
		return org_name;
	}
	public void setOrg_name(String org_name) {
		this.org_name = org_name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public void set序号(String 序号) {
		this.序号 = 序号;
	}
	public String get编号() {
		return 编号;
	}
	public void set编号(String 编号) {
		this.编号 = 编号;
	}
	public String get姓名() {
		return 姓名;
	}
	public void set姓名(String 姓名) {
		this.姓名 = 姓名;
	}
	public String get字() {
		return 字;
	}
	public void set字(String 字) {
		this.字 = 字;
	}
	public String getSpace_name() {
		return space_name;
	}
	public void setSpace_name(String space_name) {
		this.space_name = space_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public String get性别() {
		return 性别;
	}
	public void set性别(String 性别) {
		this.性别 = 性别;
	}
	
	public String getSum() {
		return sum;
	}
	public void setSum(String sum) {
		this.sum = sum;
	}
	public String get姓氏() {
		return 姓氏;
	}
	public void set姓氏(String 姓氏) {
		this.姓氏 = 姓氏;
	}
	@Override
	public String toString() {
		return "Brand [序号=" + 序号 + ", 编号=" + 编号 + ", 姓名=" + 姓名 + ", 字=" + 字 + ", space_name=" + space_name + ", email="
				+ email + ", password=" + password + ", avatar=" + avatar + ", 性别=" + 性别 + ", org_id=" + org_id
				+ ", org_name=" + org_name + ", type=" + type + "]";
	}



	
	
	
	
}