package com.ustglobal;

public class Student {
	private int sId;
	private String firstName;
	private String lastName;
	private String course;
	private String phone;
	private String street;
	private String city;
	private String state;
	private int zip;
	private String degree;
	private int deptId;
	private int creditHours;
	private int gpa;
	
	public Student(String firstName, String lastName, String course, String phone, String street, String city,
			String state, int zip, String degree, int deptId, int creditHours, int gpa) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.course = course;
		this.phone = phone;
		this.street = street;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.degree = degree;
		this.deptId = deptId;
		this.creditHours = creditHours;
		this.gpa = gpa;
	}
	

	public Student() {}

	public int getsId() {
		return sId;
	}

	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getZip() {
		return zip;
	}
	public void setZip(int zip) {
		this.zip = zip;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public int getDeptId() {
		return deptId;
	}
	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
	public int getCreditHours() {
		return creditHours;
	}
	public void setCreditHours(int creditHours) {
		this.creditHours = creditHours;
	}
	public int getGpa() {
		return gpa;
	}
	public void setGpa(int gpa) {
		this.gpa = gpa;
	}

}
