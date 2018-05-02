package com.ustglobal;

import org.springframework.jdbc.core.PreparedStatementSetter;

public class Section {
	private int term;
	private int id;
	private int lineNo;
	private int cno;
	private String instrFname;
	private String instrLname;
	private int room;
	private String days;
	private String startTime;
	private String endTime;
	public int getTerm() {
		return term;
	}
	public void setTerm(int term) {
		this.term = term;
	}
	public int getLineNo() {
		return lineNo;
	}
	public void setLineNo(int lineNo) {
		this.lineNo = lineNo;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getInstrFname() {
		return instrFname;
	}
	public void setInstrFname(String instrFname) {
		this.instrFname = instrFname;
	}
	public String getInstrLname() {
		return instrLname;
	}
	public void setInstrLname(String instrLname) {
		this.instrLname = instrLname;
	}
	public int getRoom() {
		return room;
	}
	public void setRoom(int room) {
		this.room = room;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public int getId() {
		// TODO Auto-generated method stub
		return id;
	}
	
	
}
