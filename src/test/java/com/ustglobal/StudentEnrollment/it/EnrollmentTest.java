package com.ustglobal.StudentEnrollment.it;

import static org.junit.Assert.*;

import org.junit.Test;

import com.ustglobal.Enrollment;

public class EnrollmentTest {
	@Test
	public void Enroll_test() {
		Enrollment enroll_test = new Enrollment();
		assertNotNull(enroll_test);
	}

}
