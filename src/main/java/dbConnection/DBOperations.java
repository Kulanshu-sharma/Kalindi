package dbConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import dtos.ParamDTO;
import dtos.ReplyDTO;
import dtos.SignupDTO;

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

	public static ReplyDTO Login(ParamDTO paramDTO) {
		ReplyDTO replyDTO = new ReplyDTO();
        String username=(String)paramDTO.getParams().get("userID");
        String password=(String)paramDTO.getParams().get("password");
        boolean authentic=false;
        
        
        try {
           
            String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
            Connection con = DBConnection.getConnection();
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();
            
            if (resultSet.next()) {
                System.out.println("Login successful!");
                authentic=true;
                
            } else {
                System.out.println("Invalid username or password.");
                
            }
            try {
            	if (authentic=true) {

            		String query = "SELECT * FROM Student WHERE username = ?";
            		PreparedStatement statement1 = con.prepareStatement(query);
            		statement1.setString(1, username);
            		statement1.executeQuery();
            	}
            }catch (SQLException e) {
            	e.printStackTrace();
            	
            }

          
            resultSet.close();
            statement.close();
            con.close();
        } catch (SQLException e) {
        	e.printStackTrace();
        }
        return replyDTO;
	}
}