package com.ustglobal.StudentEnrollment.it;

import static org.junit.Assert.*;

import org.junit.Test;

import com.ustglobal.Student;

public class StudentTest {

	@Test
	public void canCreateStudent() {
		Student mockStudent = new Student();
		assertNotNull(mockStudent);
	}
	
	@Test
	public void canSetCourse() {
		Student mockStudent = new Student();
		mockStudent.setCourse("Java");
		assertEquals("Java", mockStudent.getCourse());
	}

}
