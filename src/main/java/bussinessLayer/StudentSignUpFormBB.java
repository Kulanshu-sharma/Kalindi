package bussinessLayer;
import java.util.List;

import dbConnection.DBOperations;
import dtos.*;
import jakarta.servlet.http.HttpServletRequest;

public class StudentSignUpFormBB {
 
	public static List<BinaryDTO> coursesList = null;
	public static List<BinaryDTO> departmentList = null;
	public static List<BinaryDTO> semesterList = null;
	
	@SuppressWarnings("unchecked")
	public static void init(HttpServletRequest request) {
		coursesList = (List<BinaryDTO>) DBOperations.listOfCourses().getData();
		departmentList = (List<BinaryDTO>) DBOperations.listOfDepartments().getData();
		
	}
	
}
