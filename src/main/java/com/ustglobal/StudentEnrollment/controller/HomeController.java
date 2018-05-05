package com.ustglobal.StudentEnrollment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ustglobal.Course;
import com.ustglobal.Student;
import com.ustglobal.StudentEnrollment.dao.UserDao;

@Controller
public class HomeController {
	
	@Autowired
	UserDao userDao;
	
	@RequestMapping(value="/")
	public ModelAndView home(ModelAndView model) {
		model.setViewName("home");
		return model;
	}
	
	@RequestMapping(value="/newStudent")
	public ModelAndView newStudent(ModelAndView model) {
		Student newStudent = new Student();
		model.addObject("student", newStudent);
		model.setViewName("registration");
		return model;
	}
	
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public ModelAndView register(@ModelAttribute Student student) {
		userDao.register(student);		
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value="/studentProfile/{id}")
	public ModelAndView showStudent(@PathVariable int id, ModelAndView model) {
		Student student = userDao.getStudent(id);
		List<Course> courses = userDao.getStudentCourses(id);
		model.addObject(student);
		model.addObject("courses", courses);
		model.setViewName("pro");
		return model;
	}
	
	@RequestMapping(value="/studentProfile/{id}/courses")
	public ModelAndView showStudentCourses(@PathVariable int id, ModelAndView model) {
		List<Course> courses = userDao.getStudentCourses(id);
		model.addObject("courses", courses);
		model.setViewName("student-courses");
		return model;
	}
	
	@RequestMapping(value="/admin")
	public ModelAndView admin(ModelAndView model) {
		model.setViewName("admin");
		return model;
	}
	
	@RequestMapping(value="/admin/newCourse")
	public ModelAndView newCourse(ModelAndView model) {
		Course newCourse = new Course();
		model.addObject("course", newCourse);
		model.setViewName("newCourse");
		return model;
	}
}
