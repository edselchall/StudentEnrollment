package com.ustglobal.StudentEnrollment.services;

import com.ustglobal.Student;
import com.ustglobal.StudentEnrollment.dao.UserDao;
import com.ustglobal.StudentEnrollment.dao.impl.UserDaoImpl;

public class StudentService {
	
	private UserDaoImpl userDao;
	
	public void register(Student student) {
		userDao.register(student);
	}

	public Student getStudent(int i) {
		
		return null;
	}

	public void addCourse(int getsId, int courseId) {
		
	}

	public void removeCourse(int getsId, int courseId) {
		
	}

}
