package dtos;

public class SignupDTO {

	private int studentId;
	private String firstName;
	private String lastName;
	private String password;
	private String course;
	private String college_Rollno;
	private String enrollment_No;
	private String email_ID;
	private String year;
	private int semester;
	private String DOB;
	private int courseId;
	private int departmentId;
	
	
	
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getCollege_Rollno() {
		return college_Rollno;
	}
	public void setCollege_Rollno(String college_Rollno) {
		this.college_Rollno = college_Rollno;
	}
	public String getEnrollment_No() {
		return enrollment_No;
	}
	public void setEnrollment_No(String enrollment_No) {
		this.enrollment_No = enrollment_No;
	}
	public String getEmail_ID() {
		return email_ID;
	}
	public void setEmail_ID(String email_ID) {
		this.email_ID = email_ID;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public int getSemester() {
		return semester;
	}
	public void setSemester(int semester) {
		this.semester = semester;
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public int getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
	
	
	
}
