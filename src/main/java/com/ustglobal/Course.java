package com.ustglobal;

public class Course {
	int CNO;
	String Course_title;
	int hours;
	int Dept_Id;
	
	public Course(int cNO, String course_title, int hours, int dept_Id) {
		super();
		CNO = cNO;
		Course_title = course_title;
		this.hours = hours;
		Dept_Id = dept_Id;
	}
	public int getCNO() {
		return CNO;
	}
	public void setCNO(int cNO) {
		CNO = cNO;
	}
	public String getCourse_title() {
		return Course_title;
	}
	public void setCourse_title(String course_title) {
		Course_title = course_title;
	}
	public int getHours() {
		return hours;
	}
	public void setHours(int hours) {
		this.hours = hours;
	}
	public int getDept_Id() {
		return Dept_Id;
	}
	public void setDept_Id(int dept_Id) {
		Dept_Id = dept_Id;
	}
	
	
}