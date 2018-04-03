package org.jsp.Pojo;

public class Student {
	String name;
	String address;
    String classname;
    int studentid,age,rollno;
    
    public Student(){
    
    }
    
	
	public Student(String name, String address, String classname, int studentid, int age, int rollno) {
		super();
		this.name = name;
		this.address = address;
		this.classname = classname;
		this.studentid = studentid;
		this.age = age;
		this.rollno = rollno;
	}


	public int getStudentId() {
		return studentid;
	}


	public void setStudentId(int studentid) {
		this.studentid= studentid;
	}


	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getRollno() {
		return rollno;
	}
	public void setRollno(int rollno) {
		this.rollno = rollno;
	}
    
}
