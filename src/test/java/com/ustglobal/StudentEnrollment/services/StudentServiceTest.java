package com.ustglobal.StudentEnrollment.services;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import com.ustglobal.Student;

public class StudentServiceTest {
	private StudentService studentService;
	private Student mockStudent;
	
	@Before
	public void setUp() throws Exception {
		studentService = new StudentService();
		mockStudent = new Student("Erik", "Kurt", "Math", "123-4567", "123 Main Street", "Chicago",
				"IL", 12345, "BS", 1, 1, 4);
	}
	
	@Test
	public void studentCanRegister() {
		studentService.register(mockStudent);
		System.out.println(mockStudent.getFirstName());
		Student dbStudent = studentService.getStudent(1);
		assertNotNull(dbStudent);
	}
	
	@Test
	public void studentAddCourse() {
		studentService.addCourse(mockStudent.getsId(), 1);
		Student dbStudent = studentService.getStudent(1);
		String course = dbStudent.getCourse();
		assertEquals("Math", course);
	}

	@Test
	public void studentCanDropCourse() {
		studentService.removeCourse(mockStudent.getsId(), 1);
		Student dbStudent = studentService.getStudent(1);
		String course = dbStudent.getCourse();
		assertEquals("", course);
	}

}
