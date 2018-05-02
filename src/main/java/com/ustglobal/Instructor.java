package com.ustglobal;


public class Instructor {
	private String Last_name;
	private String First_name;
	private int Dept_Id;
	private String Office;
	private String PhoneNo;
	private String email;
	
	
	
	public Instructor(String last_name, String first_name, int dept_Id, String office, String phoneNo, String email) {
		super();
		Last_name = last_name;
		First_name = first_name;
		Dept_Id = dept_Id;
		Office = office;
		PhoneNo = phoneNo;
		this.email = email;
	}
	
		
	public String getLast_name() {
		return Last_name;
	}
	public void setLast_name(String last_name) {
		Last_name = last_name;
	}
	public String getFirst_name() {
		return First_name;
	}
	public void setFirst_name(String first_name) {
		First_name = first_name;
	}
	public int getDept_Id() {
		return Dept_Id;
	}
	public void setDept_Id(int dept_Id) {
		Dept_Id = dept_Id;
	}
	public String getOffice() {
		return Office;
	}
	public void setOffice(String office) {
		Office = office;
	}
	public String getPhoneNo() {
		return PhoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		PhoneNo = phoneNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

}
