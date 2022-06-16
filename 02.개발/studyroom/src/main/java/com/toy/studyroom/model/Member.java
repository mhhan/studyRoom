package com.toy.studyroom.model;

public class Member {

	private String id, pass, name , tel;
	
	public Member() {}

	public Member(String id, String pass, String name, String tel) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.tel = tel;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", pass=" + pass + ", name=" + name + ", tel=" + tel + "]";
	}
	
}
