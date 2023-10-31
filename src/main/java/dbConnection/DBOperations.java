package dbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;

import dtos.ParamDTO;
import dtos.ReplyDTO;
import dtos.SignupDTO;
import dtos.StudentProfileDTO;
import dtos.TimetableDTO;

public class DBOperations {

	public static ReplyDTO studentRegistration(ParamDTO paramDTO) {
		ReplyDTO replyDTO = new ReplyDTO();
		if(paramDTO==null) {
			replyDTO.setErrFlag(true);
			replyDTO.setErrMsg("Internal ParamDTO Object NULL error");
			return replyDTO;
		}
		if(paramDTO.getData()==null) {
			replyDTO.setErrFlag(true);
			replyDTO.setErrMsg("No Data Recieved from Business Layer");
			return replyDTO;
		}
		SignupDTO signupDTO = (SignupDTO) paramDTO.getData();
		Connection con = DBConnection.getConnection();
		try {
			PreparedStatement stmt= con.prepareStatement("insert into STUDENT values(?,?,?)");
			stmt.setInt(1,signupDTO.getStudentId());
			stmt.setString(2,signupDTO.getFirstName()+" "+signupDTO.getLastName());
			stmt.setString(3,signupDTO.getPassword());
			stmt.executeUpdate();
			replyDTO.setErrFlag(false);
			replyDTO.setMsg("Student with Student ID "+signupDTO.getStudentId()+" registered Successfully!!!");
		}
		catch(Exception ex) {
			ex.printStackTrace();
			replyDTO.setErrFlag(true);
			replyDTO.setErrMsg("Database Connection error!!!");
		}
		return replyDTO;
		
	}
	
	public static ReplyDTO getStudentTimeTable(ParamDTO paramDTO) {
		ReplyDTO replyDTO = new ReplyDTO();
		TimetableDTO timetableDTO = (TimetableDTO) paramDTO.getData();
        List<TimetableDTO> resultList = new ArrayList<TimetableDTO>();
        TimetableDTO result = null;
        ResultSet resultSet = null;
        PreparedStatement stmt = null;
        Connection connection = null;
		try {
			connection = DBConnection.getConnection();
			int day = LocalDate.now(ZoneId.of("Asia/Kolkata")).getDayOfWeek().getValue();
			String query =  "SELECT sb.SUBJECT_NAME AS SUBJECT,tb.TEACHER_NAME AS TEACHER,st.SLOT_NAME AS SLOT,t.LAB_TUT AS LAB,t.LOCATION AS LOCATION,t.MODE AS MODE "
			        + "FROM timetable as t,subject_tbl as sb,teacher_tbl as tb,slot_tbl as st "
			        + "WHERE t.SUBJECT_ID=sb.SUBJECT_ID AND t.TEACHER_ID=tb.TEACHER_ID AND t.SLOT_ID=st.SLOT_ID"
			        + "AND t.DAY_ID = ? AND t.COLLEGE_ID = ? AND t.DEPARTMENT_ID = ? AND t.COURSE_ID = ? AND t.SEMESTER_ID = ?";
			if(timetableDTO.getGroupId()!=0) {
				query = query + " AND t.GROUP_ID = "+timetableDTO.getGroupId();
			}
						
			stmt = connection.prepareStatement(query);
			stmt.setInt(1,day);
			stmt.setInt(2,101);
			stmt.setInt(3,timetableDTO.getDepartmentId());
			stmt.setInt(4,timetableDTO.getCourseId());
			stmt.setInt(5,timetableDTO.getSemesterId());
			resultSet = stmt.executeQuery(query);

			while (resultSet.next()) {
				result = new TimetableDTO();
			    result.setSubjectName(resultSet.getString("SUBJECT"));
		        result.setTeacherName(resultSet.getString("TEACHER"));
		        result.setSlotName(resultSet.getString("SLOT"));
		        result.setLabOrTut(resultSet.getInt("LAB"));
		        result.setLocation(resultSet.getString("LOCATION"));
		        result.setMode(resultSet.getString("MODE"));
		        resultList.add(result);
			}
            
			replyDTO.setErrFlag(true);
			replyDTO.setData(resultList);
		} catch (Exception e) {
			replyDTO.setErrFlag(true);
			replyDTO.setErrMsg("Internal Server Error!!!");
		}
		finally {
			try {
				resultSet.close();
				stmt.close();
				connection.close();
			}catch(Exception ex) {
				replyDTO.setErrFlag(true);
				replyDTO.setErrMsg("Internal Server Error!!!");
			}
		}
		return replyDTO;
	}

	public static ReplyDTO login(ParamDTO paramDTO) {
		ReplyDTO replyDTO = new ReplyDTO();
        String username=(String)paramDTO.getParams().get("userID");
        String password=(String)paramDTO.getParams().get("password");
        try {
            String sql = "SELECT STUDENT_NAME,EMAIL_ID,COURSE_ID,SEMESTER,DEPARTMENT_ID FROM student WHERE ENROLLMENT_NO = ? AND PASSWORD = ?";
            Connection con = DBConnection.getConnection();
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();
            StudentProfileDTO studentProfileDTO = null;
            if (resultSet.next()) {
            	studentProfileDTO = new StudentProfileDTO();
            	studentProfileDTO.setFullName(resultSet.getString("STUDENT_NAME"));
            	studentProfileDTO.setEmailId(resultSet.getString("EMAIL_ID"));
            	studentProfileDTO.setCourseId(resultSet.getInt("COURSE_ID"));
            	studentProfileDTO.setCourseName(getCourseNameFromCourseId(resultSet.getInt("COURSE_ID")));
            	studentProfileDTO.setSemester(resultSet.getInt("SEMESTER"));
            	studentProfileDTO.setDepartmentId(resultSet.getInt("DEPARTMENT_ID"));
            	studentProfileDTO.setDepartmentName(getDepartmentNameFromDepartmentId(resultSet.getInt("DEPARTMENT_ID")));
            	replyDTO.setData(studentProfileDTO);
            } else {
            	replyDTO.setErrFlag(true);
    			replyDTO.setErrMsg("Invalid username or password!!!"); 
            }
           
        } catch (SQLException e) {
        	e.printStackTrace();
        	replyDTO.setErrFlag(true);
			replyDTO.setErrMsg("Internal Server Error!!!"); 
        }
        return replyDTO;
	}
	
	public static String getCourseNameFromCourseId(int courseId) {
		String courseName = "";
		try {

			String sql = "SELECT COURSE_NAME FROM course_tbl WHERE COURSE_ID = ?";
			Connection con = DBConnection.getConnection();
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setInt(1,courseId);
			ResultSet resultSet = statement.executeQuery();

			if (resultSet.next()) {
				courseName = resultSet.getString("COURSE_NAME");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return courseName;
	}
	
	public static String getDepartmentNameFromDepartmentId(int departmentId) {
		String departmentName = "";
		try {

			String sql = "SELECT DEPARTMENT_NAME FROM department_tbl WHERE DEPARTMENT_ID = ?";
			Connection con = DBConnection.getConnection();
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setInt(1,departmentId);
			ResultSet resultSet = statement.executeQuery();

			if (resultSet.next()) {
				departmentName = resultSet.getString("DEPARTMENT_NAME");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return departmentName;
	}
	
}