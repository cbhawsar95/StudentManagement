package org.jsp.Pojo;

public class User {

	String name ,password;

	public User(String name, String password) {
		this.name = name;
		this.password = password;
	}

	public User() {
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}