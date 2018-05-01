package com.ustglobal.StudentEnrollment.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.ustglobal.Course;
import com.ustglobal.Student;
import com.ustglobal.StudentEnrollment.dao.UserDao;

public class UserDaoImpl implements UserDao {
	
	private DataSource dataSource;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public void register(Student student) {
		String sql = "INSERT INTO STUDENT " +
					"(FIRST_NAME, LAST_NAME, COURSE, " +
					"PHONE, STREET, CITY, " + 
					"STATE, ZIP, DEGREE, " +
					"DEPT_ID, CREDIT_HOURS, GPA) " +
					"VALUES (?,?,?,?,?,?,?,?,?,?)";
		Connection conn = null;
		
		try {
			conn = dataSource.getConnection();
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, student.getFirstName());
			ps.setString(2, student.getLastName());
			ps.setString(3, student.getCourse());
			ps.setString(4, student.getPhone());
			ps.setString(5, student.getStreet());
			ps.setString(6, student.getCity());
			ps.setString(7, student.getState());
			ps.setInt(8, student.getZip());
			ps.setString(9, student.getDegree());
			ps.setInt(10,  student.getDeptId());
			ps.setInt(11,  student.getCreditHours());
			ps.setInt(12, student.getGpa());
			
			ps.executeQuery();
			ps.close();
			
		} catch(SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
			
		}

	}
	
	@Override
	public Student getStudent(int sId) {
		String sql = "SELECT * FROM STUDENT WHERE S_ID = ?";
		Connection conn = null;
		
		try {
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
		}
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
