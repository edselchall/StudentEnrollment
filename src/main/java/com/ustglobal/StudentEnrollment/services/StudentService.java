package com.ustglobal.StudentEnrollment.services;

import com.ustglobal.Student;
import com.ustglobal.StudentEnrollment.dao.UserDao;

public class StudentService {
	
	private UserDao userDao;
	
	public void register(Student student) {
		userDaoImpl.register(student);
	}

	public Student getStudent(int i) {
		
		return null;
	}

	public void addCourse(int getsId, int courseId) {
		
	}

	public void removeCourse(int getsId, int courseId) {
		
	}

}
