package com.ustglobal.StudentEnrollment.services;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.ArrayList;

import org.junit.Before;
import org.junit.Test;

import com.ustglobal.Course;
import com.ustglobal.Instructor;
import com.ustglobal.Section;
import com.ustglobal.Student;
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
		mockInstructor = new Instructor("Hall", "Edsel", 1, "Math", "123-4567", "e@ok.com");
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

	
	  @Test 
	  public void adminCanPrepareTermSchedule() {
		  ArrayList<Section>prepareTermSchedule = new ArrayList<Section>();
		  adminService.PrepareTermSchedule(mockSection); 
		  assertNotNull(mockSection);	  
	  
	  }	 

	@Test
	public void adminCanAddInstructor() {
		adminService.addInstructor(mockInstructor);
		Instructor dbInstructor = adminService.getInstructor(1);
		assertNotNull(dbInstructor);
	}

	@Test
	public void adminCanDeleteInstructor() {
		adminService.deleteInstructor(mockInstructor);
		Instructor dbInstructor = adminService.getInstructor(1);
		assertNull(dbInstructor);
	}

	@Test
	public void adminCanAddSection() {
		adminService.addSection(mockSection);
		Section dbSection = adminService.getSection();
		assertNotNull(dbSection);
	}

	@Test
	public void adminCanDeleteSection() {
		adminService.deleteSection(mockSection);
		Section dbSection = adminService.getSection(1);
		assertNull(dbSection);

	}

	@Test
	public void adminCanUpdateSection() {
		adminService.updateSection(mockSection);
		Section dbSection = adminService.updateSection(1);
		assertNotNull(dbSection);

	}

	@Test
	public void adminCanAddStudent() {
		adminService.addStudent(mockCourse);
		Student dbStudent = adminService.addStudent(1);
		assertNotNull(dbStudent);

	}

	@Test
	public void adminCanDeleteStudent() {
		adminService.deleteStudent(mockSection);
		Section dbStudent = adminService.getStudent(1);
		assertNull(dbStudent);

	}

}
