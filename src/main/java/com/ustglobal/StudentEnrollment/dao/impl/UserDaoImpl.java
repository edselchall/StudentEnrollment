package com.ustglobal.StudentEnrollment.dao.impl;

import java.sql.Connection;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

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
		String sql = "SELECT * FROM STUDENT WHERE S_ID = ?";
		//Connection conn = null;
		return null;
		
		/*try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setInt(1, sId);
			
			Student student = null;
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				student = new Student(
					rs.getString("FIRST_NAME"),
					rs.getString("LAST_NAME"), 
					rs.getString("COURSE"),
					rs.getString("PHONE"),
					rs.getString("STREET"),
					rs.getString("CITY"),
					rs.getString("STATE"),
					rs.getInt("ZIP"),
					rs.getString("DEGREE"),
					rs.getInt("DEPT_ID"),
					rs.getInt("CREDIT_HOURS"),
					rs.getInt("GPA")
				);
			}
			rs.close();
			ps.close();
			return student;
		} catch(SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if(conn != null) {
				try {
					conn.close();
				} catch(SQLException e) {}
			}
		}*/
	}

	@Override
	public void addCourse(Student student, Course course) {
		// TODO Auto-generated method stub

	}

	@Override
	public void dropCourse(Course course) {
		// TODO Auto-generated method stub

	}

	@Override
	public void createCourse() {
		// TODO Auto-generated method stub

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
