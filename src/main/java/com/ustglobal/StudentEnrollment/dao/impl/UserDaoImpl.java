package com.ustglobal.StudentEnrollment.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.ustglobal.Course;
import com.ustglobal.Student;
import com.ustglobal.StudentEnrollment.dao.UserDao;

public class UserDaoImpl implements UserDao {
	
	private JdbcTemplate jdbcTemplate;
	
	public UserDaoImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public void register(Student student) {
		String sql = "INSERT INTO STUDENT " +
					"(FIRST_NAME, LAST_NAME, COURSE, " +
					"PHONE, STREET, CITY, " + 
					"STATE, ZIP, DEGREE, " +
					"DEPT_ID, CREDIT_HOURS, GPA) " +
					"VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		
		jdbcTemplate.update(sql, student.getFirstName(), student.getLastName(),
								student.getCourse(), student.getPhone(),
								student.getStreet(), student.getCity(),
								student.getState(), student.getZip(),
								student.getDegree(), student.getDeptId(),
								student.getCreditHours(), student.getGpa());
	}
	
	@Override
	public Student getStudent(int sId) {
		String sql = "SELECT * FROM STUDENT WHERE S_ID = " + sId;
		Student student = new Student() ;
		
		
		jdbcTemplate.query(sql, new RowMapper<Student>() {
			@Override		
			public Student mapRow(ResultSet result, int rowNum) throws SQLException {
				
				student.setsId(result.getInt("s_id"));
				student.setFirstName(result.getString("first_name"));
				student.setLastName(result.getString("last_name"));
				student.setStreet(result.getString("street"));
				student.setCity(result.getString("city"));
				student.setState(result.getString("state"));
				student.setZip(result.getInt("zip"));
				student.setPhone(result.getString("phone"));
				student.setCourse(result.getString("course"));
				student.setGpa(result.getInt("gpa"));
				student.setDeptId(result.getInt("dept_id"));
				student.setDegree(result.getString("degree"));
				student.setCreditHours(result.getInt("credit_hours"));
				return student;
				
			}
			
		});
		//return student;
		return student;
			
		
		
		
		
		
	}

	@Override
	public void addCourse(Student student, Course course) {
		// TODO Auto-generated method stub

	}

	@Override
	public void dropCourse(Student student, Course course) {
		// TODO Auto-generated method stub
	}

	@Override
	public void createCourse() {
		

	}

	@Override
	public void deleteCourse() {
		// TODO Auto-generated method stub

	}

	@Override
	public void prepareTermSchedule() {
		// TODO Auto-generated method stub

	}

	@Override
	public void addInstructor() {
		// TODO Auto-generated method stub

	}

	@Override
	public void dropInstructor() {
		// TODO Auto-generated method stub

	}

	@Override
	public void addSection() {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteSection() {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateSection() {
		// TODO Auto-generated method stub

	}

	@Override
	public void addStudent() {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteStudent() {
		// TODO Auto-generated method stub

	}

	@Override
	public String getSchedule() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Course> getCatalog() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Student> getHonorsStudents() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String requestTranscript(Student student) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getFeeReport() {
		// TODO Auto-generated method stub
		return null;
	}

}
