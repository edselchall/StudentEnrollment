package com.ustglobal.StudentEnrollment.services;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.ustglobal.Course;
import com.ustglobal.Student;
import com.ustglobal.StudentEnrollment.dao.UserDao;

public class StudentServiceTest {
	@Autowired
	UserDao userDao;
	
	private Student mockStudent;
	private Course mockCourse;
	
	@Before
	public void setUp() throws Exception {
		mockStudent = new Student("Erik", "Kurt", "Math", "123-4567", "123 Main Street", "Chicago",
				"IL", 12345, "BS", 1, 1, 4);
		mockCourse = new Course(0, null, 0, 0);
	}
	
	@Test
	public void studentCanRegister() {
		userDao.register(mockStudent);
		System.out.println(mockStudent.getFirstName());
		Student dbStudent = userDao.getStudent(1);
		assertNotNull(dbStudent);
	}
	
	@Test
	public void studentAddCourse() {
		userDao.addCourse(mockStudent, mockCourse);
		Student dbStudent = userDao.getStudent(1);
		String course = dbStudent.getCourse();
		assertEquals("Math", course);
	}

	@Test
	public void studentCanDropCourse() {
		userDao.dropCourse(mockStudent, mockCourse);
		Student dbStudent = userDao.getStudent(1);
		String course = dbStudent.getCourse();
		assertEquals("", course);
	}

}
