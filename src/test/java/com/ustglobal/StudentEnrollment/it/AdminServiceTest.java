package com.ustglobal.StudentEnrollment.it;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import org.junit.Before;
import org.junit.Test;

import com.ustglobal.Course;
import com.ustglobal.StudentEnrollment.services.AdminService;

public class AdminServiceTest {
	private Course mockCourse;
	private AdminService adminService;

	@Before
	public void setUp() throws Exception {
		adminService = new AdminService();
		mockCourse = new Course(1, "Java", 3, 1);
	}

	@Test
	public void adminCanCreateCourse() {
		adminService.createCourse(mockCourse);
		Course dbCourse = adminService.getCourse(1);
		assertNotNull(dbCourse);
	}

	@Test
	public void adminCanDropCourse() {
		adminService.DropCourse(mockCourse);
		Course dbCourse = adminService.getCourse(1);
		assertNull(dbCourse);
	}

	@Test
	public void adminCanPrepareTermSchedule() {
		adminService.PrepareTermSchedule();
		

	}

	@Test
	public void adminCanAddInstructors() {

	}

	@Test
	public void adminCanDropInstructors() {

	}

	@Test
	public void adminCanAddSections() {

	}

	@Test
	public void adminCanDropSections() {

	}

	@Test
	public void adminCanUpdateSection() {

	}

	@Test
	public void adminCanAddStudent() {

	}

	@Test
	public void adminCanDeleteStudent() {

	}

}
