package com.ustglobal.StudentEnrollment.dao;

import java.util.ArrayList;

import com.ustglobal.Course;
import com.ustglobal.Instructor;
import com.ustglobal.Section;
import com.ustglobal.Student;

public interface UserDao {
	
	//Student Menu
	public void register(Student student);
	public Student getStudent(int sId);
	public void addCourse(Student student, Course course);
	public void dropCourse(Student student, Course course);
	
	//Admin Menu
	public void createCourse(Course course);
	public void deleteCourse(Course course);
	public void prepareTermSchedule();
	public void addInstructor(Instructor instructor);
	public void dropInstructor();
	public void addSection(Section section);
	public void deleteSection();
	public void updateSection();
	public void addStudent();
	public void deleteStudent();
	
	//Reports Menu
	public String getSchedule();
	public ArrayList<Course> getCatalog();
	public ArrayList<Student> getHonorsStudents();
	public String requestTranscript(Student student);
	public String getFeeReport();
	
	
}
