package bussinessLayer;
import java.util.List;
import java.util.Scanner;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Connection;


public class StudentEnrollment {


	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);
		Connection connection = null;

		try {
		    Class.forName("com.mysql.cj.jdbc.Driver");

		    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/KALINDI_DB", "root", "#Kulanshu2011");

		} catch (ClassNotFoundException | SQLException e) {
		    e.printStackTrace();
		}
		
		
        System.out.print("Enter Student ID: ");
        
        int studentId = scanner.nextInt();
        String query = "SELECT s.SUBJECT_NAME,s1.COLLEGE_ROLLNO  FROM STUDENT_OTHER_INFO AS s1, SUBJECT_TBL as s WHERE s1.COLLEGE_ROLLNO=? AND s1.GE = s.SUBJECT_ID OR s1.AEC = s.SUBJECT_ID OR s1.VAC=s.SUBJECT_ID\r\n"
        		+ "OR s1.SEC=s.SUBJECT_ID;";
        
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, studentId);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<String> enrolledSubjects = new ArrayList<>();

            while (resultSet.next()) {
                String subjectId = resultSet.getString("subject_id");
                String subjectName = resultSet.getString("subject_name");
                enrolledSubjects.add("Subject ID: " + subjectId + ", Subject Name: " + subjectName);
            }

            if (enrolledSubjects.isEmpty()) {
                System.out.println("No subjects enrolled for the given student ID.");
            } else {
                System.out.println("Enrolled subjects for student ID " + studentId + ":");
                for (String subject : enrolledSubjects) {
                    System.out.println(subject);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}

