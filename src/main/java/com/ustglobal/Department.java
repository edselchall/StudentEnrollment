package com.ustglobal;

public class Department {
	int Dept_Id;
	String Dept_Name;
	String College;
	
	
	private Department(int dept_Id, String dept_Name, String college) {
		super();
		Dept_Id = dept_Id;
		Dept_Name = dept_Name;
		College = college;
	}
	public int getDept_Id() {
		return Dept_Id;
	}
	public void setDept_Id(int dept_Id) {
		Dept_Id = dept_Id;
	}
	public String getDept_Name() {
		return Dept_Name;
	}
	public void setDept_Name(String dept_Name) {
		Dept_Name = dept_Name;
	}
	public String getCollege() {
		return College;
	}
	public void setCollege(String college) {
		College = college;
	}
	

}
