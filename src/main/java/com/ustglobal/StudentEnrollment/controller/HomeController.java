package com.ustglobal.StudentEnrollment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ustglobal.Student;
import com.ustglobal.StudentEnrollment.services.StudentService;

@Controller
public class HomeController {

	@RequestMapping(value="/hello")
	public ModelAndView hello(@RequestParam(required=false, defaultValue="World") String name) {
		StudentService studentService = new StudentService();
		Student mockStudent = new Student("Erik", "Kurt", "Math", "123-4567", "123 Main Street", "Chicago",
				"IL", 12345, "BS", 1, 1, 4);
		
		System.out.println(studentService);
		System.out.println(mockStudent);
		
		
		ModelAndView ret = new ModelAndView("home");

		return ret;
	}
	@RequestMapping(value="/register")
	public ModelAndView register() {
		ModelAndView reg = new ModelAndView("registration");
		return reg;
		
	}
}
