package com.cwx.pojo;

public class Org {
	private String 组织id ;
    private String 国名;
    private Org_user org_user;
	public String get组织id() {
		return 组织id;
	}
	public void set组织id(String 组织id) {
		this.组织id = 组织id;
	}
	public String get国名() {
		return 国名;
	}
	public void set国名(String 国名) {
		this.国名 = 国名;
	}
	public Org_user getOrg_user() {
		return org_user;
	}
	public void setOrg_user(Org_user org_user) {
		this.org_user = org_user;
	}
	@Override
	public String toString() {
		return "org [组织id=" + 组织id + ", 国名=" + 国名 + ", org_user=" + org_user + "]";
	}


  
}
