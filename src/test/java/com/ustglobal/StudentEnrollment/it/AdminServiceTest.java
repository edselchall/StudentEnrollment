package com.ustglobal.StudentEnrollment.it;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import org.junit.Before;
import org.junit.Test;

import com.ustglobal.Course;
import com.ustglobal.Instructor;
import com.ustglobal.Section;
import com.ustglobal.StudentEnrollment.services.AdminService;

public class AdminServiceTest {
	private Instructor mockInstructor;
	private Course mockCourse;
	private AdminService adminService;
	private Section mockSection;
	

	@Before
	public void setUp() throws Exception {
		adminService = new AdminService();
		mockCourse = new Course(1, "Java", 3, 1);
		mockInstructor = new Instructor("Hall", "Edsel", 1, "Math", "123-4567","e@ok.com");
	}

	@Test
	public void adminCanCreateCourse() {
		adminService.createCourse(mockCourse);
		Course dbCourse = adminService.getCourse(1);
		assertNotNull(dbCourse);
	}

	@Test
	public void adminCanDeleteCourse() {
		adminService.deleteCourse(mockCourse);
		Course dbCourse = adminService.getCourse(1);
		assertNull(dbCourse);
	}

	/*@Test
	public void adminCanPrepareTermSchedule() {
		adminService.PrepareTermSchedule();
		add code here

	}*/

	@Test
	public void adminCanAddInstructor() {
		adminService.addInstructor(mockInstructor);
		Instructor dbInstructor = adminService.getInstructor(1);
		assertNotNull(dbInstructor);
	}

	@Test
	public void adminCanDropInstructor() {
		adminService.dropInstructor(mockInstructor);
		Instructor dbInstructor = adminService.getInstructor(1);
		assertNull(dbInstructor);
	}

	@Test
	public void adminCanAddSection() {
		adminService.addSection(mockSection);
		Section dbSection = adminService.getSection();
		assertNotNull(dbSection);		
	}

/*	@Test
	public void adminCanDeleteSection() {

	}

	@Test
	public void adminCanUpdateSection() {

	}

	@Test
	public void adminCanAddStudent() {

	}

	@Test
	public void adminCanDeleteStudent() {

	}*/

}
