package bussinessLayer;
import java.util.List;
import java.util.Scanner;

import dbConnection.DBConnection;
import dtos.ReplyDTO;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Connection;


public class StudentEnrollment {


	public static ReplyDTO studentElectives(int studentId) {

		ReplyDTO replyDTO = new ReplyDTO();
		Connection connection = null;
        connection = DBConnection.getConnection();
		        
        String query = "SELECT s.SUBJECT_NAME AS SUBJECT_NAME FROM STUDENT_OTHER_INFO AS s1, SUBJECT_TBL as s WHERE s1.COLLEGE_ROLLNO=? AND s1.GE = s.SUBJECT_ID OR s1.AEC = s.SUBJECT_ID OR s1.VAC=s.SUBJECT_ID"
        		+ " OR s1.SEC=s.SUBJECT_ID;";
        
        try{
        	PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, studentId);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<String> enrolledSubjects = new ArrayList<String>();

            while (resultSet.next()) {
                String subjectName = resultSet.getString("SUBJECT_NAME");
                enrolledSubjects.add(subjectName);
            }

            if (enrolledSubjects.isEmpty()) {
            	replyDTO.setErrFlag(true);
                replyDTO.setErrMsg("No subjects enrolled for the given student ID.");
                return replyDTO;
            } else {
                replyDTO.setErrFlag(false);
                replyDTO.setData(enrolledSubjects);
                return replyDTO;
            }

        } catch (SQLException e) {
            e.printStackTrace();
            replyDTO.setErrFlag(true);
            replyDTO.setErrMsg("Internal Server Error");
        }
        
        return replyDTO;
    }

}

