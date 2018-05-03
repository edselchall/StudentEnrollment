package com.ustglobal.StudentEnrollment.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.ustglobal.Course;
import com.ustglobal.Instructor;
import com.ustglobal.Section;
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
	public List<Course> getStudentCourses(int sId) {
		String sql = "SELECT course.c_no, course.course_title, course.hours, section.instrFname, "
				+ "section.room, section.days, section.start_time, section.end_time "
				+ "FROM course "
				+ "JOIN section ON section.c_no = course.c_no "
				+ "JOIN enrollment ON section.line_no = enrollment.line_no "
				+ "JOIN student ON enrollment.s_id = student.s_id "
				+ "WHERE student.s_id = " + sId;
		
		return jdbcTemplate.query(sql, new RowMapper<Course>() {

			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {
				Course course = new Course();
				course.setCNO(rs.getInt(1));
				course.setCourse_title(rs.getString(2));
				course.setHours(rs.getShort(3));
				
				return course;
			}
		});
	}

	@Override
	public void createCourse(Course course) {
		String sql = "INSERT INTO COURSE (COURSE_TITLE, HOURS, DEPT_ID) VALUES (?,?,?)";
		jdbcTemplate.update(sql, course.getCourse_title(), course.getHours(),course.getDept_Id());
								 		

	}

	@Override
	public void deleteCourse(Course course) {
		String sql = "DELETE * FROM COURSE WHERE ID = ?";
		jdbcTemplate.update(sql, course.getCNO());

	}

	@Override
	public void prepareTermSchedule() {
		// TODO Auto-generated method stub

	}

	@Override
	public void addInstructor(Instructor instructor) {
		String sql = "SELECT * FROM INSTRUCTOR WHERE ID =?";
		jdbcTemplate.update(sql, instructor.getFirst_name(), instructor.getLast_name(), 
								 instructor.getDept_Id(), instructor.getOffice(), instructor.getPhoneNo(), 
								 instructor.getEmail());
		

	}

	@Override
	public void dropInstructor() {
		// TODO Auto-generated method stub

	}

	@Override
	public void addSection(Section section) {
		String sql = "INSERT INTO (TERM, LINENO, CNO, INSTRFNAME, INSTRLNAME, ROOM, DAYS, STARTTIME,ENDTIME)";
		jdbcTemplate.update(sql, section.getTerm(), section.getLineNo(), section.getCno(), section.getInstrFname(),
								section.getInstrLname(), section.getRoom(), section.getDays(), section.getStartTime(),
								section.getEndTime());		

	}

	@Override
	public void deleteSection(Section section) {
		String sql = "DELETE FROM SECTION WHERE ID =?";
		jdbcTemplate.update(sql, section.getId());
		

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
