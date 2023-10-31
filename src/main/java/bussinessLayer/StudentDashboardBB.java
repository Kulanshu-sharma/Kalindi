package bussinessLayer;

import java.util.HashMap;
import java.util.Map;
import java.util.List;
import dbConnection.DBOperations;
import dtos.*;
import jakarta.servlet.http.HttpServletRequest;

public class StudentDashboardBB {

	public static String studentName;
	public static String emailId;
	public static String phoneNo;
	public static String membershipExpiry;
	public static String course;
	public static String department;
	public static int semester;
	public static String headerText;
	public static String backToLoginPage;
	public static String loginSuccessfull;
	public static String displayLoginErrorScreen;
	public static String loginErrorText;
	public static List<TimetableDTO> timeTableList;
	public static int totalBeds;
    public static int vacantBeds;
    public static int emergencyBeds;
	
	@SuppressWarnings("unchecked")
	public static void init(HttpServletRequest request) {
		//Check login credentials...
		String userName = "";
		String password = "";
		String alreadyLoggegInForHomepage = "N";
		if(request.getParameter("username")!=null) {
		  userName = request.getParameter("username");
		  password = request.getParameter("password");
		}
		else {
		  userName = (String) request.getSession().getAttribute(Constants.USER_ID);
		  password = (String) request.getSession().getAttribute(Constants.PASSWORD);
		  alreadyLoggegInForHomepage = "Y";
		}
		ParamDTO paramDTO = new ParamDTO();
		Map<String,Object> paramMap = new HashMap<String,Object>();
		paramMap.put(Constants.USER_ID,userName);
		paramMap.put(Constants.PASSWORD, password);
		paramMap.put("isAlreadyLogInForHome",alreadyLoggegInForHomepage);
		paramDTO.setParams(paramMap);
		ReplyDTO replyDTO = DBOperations.login(paramDTO);
		if(replyDTO.isErrFlag()) {
			loginSuccessfull = "none";
			displayLoginErrorScreen="block";
			loginErrorText = replyDTO.getErrMsg();
		}
		else {
			//Login is Successful...
			loginSuccessfull = "block";
			displayLoginErrorScreen="none";
			StudentProfileDTO userProfileDTO = (StudentProfileDTO) replyDTO.getData();
			studentName = userProfileDTO.getFullName();
			emailId = userProfileDTO.getEmailId();
			phoneNo = "+"+userProfileDTO.getPhoneNo();
			course = userProfileDTO.getCourseName();
			department = userProfileDTO.getDepartmentName();
	    	semester = userProfileDTO.getSemester();
			membershipExpiry="22/11/2026";
			headerText= "This is your profile page. You can book your appointment with any doctor with your choice and you can also cancel your appointment.";
		    backToLoginPage = "goToLoginPage()";
		    
		    //Putting login credential on session...
		    request.getSession().setAttribute(Constants.USER_ID,userName);
		    request.getSession().setAttribute(Constants.PASSWORD,password);
		    
		    //Fetching Timetable list for that particular student...
		    TimetableDTO timetableDTO = new TimetableDTO();
		    timetableDTO.setCourseId(userProfileDTO.getCourseId());
		    timetableDTO.setDepartmentId(userProfileDTO.getDepartmentId());
		    timetableDTO.setSemesterId(userProfileDTO.getSemester());
		    paramDTO.setData(timetableDTO);
		    replyDTO = DBOperations.getStudentTimeTable(paramDTO);
		    timeTableList = (List<TimetableDTO>) replyDTO.getData();
		   
		}
	
	}
}
