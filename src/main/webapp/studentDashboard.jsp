<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bussinessLayer.*" import="dtos.*" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scle=1.0">
<title>Student Dashboard</title>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<link rel="stylesheet" href="Dashboard.css">
<script src="KalindiKiosk.js"></script>
<%StudentDashboardBB.init(request);%>
</head>

<body>
  <div style="display:<%=StudentDashboardBB.loginSuccessfull%>">
  <div class="main-content">
    <!-- Top navbar -->
    <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
      <div class="container-fluid">
        <!-- Brand -->
        <h1 style="color:black;"><img style="width:40%;" alt="" src="logo.png"></h1>
        <!-- User -->
        <ul class="navbar-nav align-items-center d-none d-md-flex">
          <li class="nav-item dropdown">
            <button style="padding-right: 1rem !important;border: none;background-color: transparent;" class="nav-link pr-0" onclick="logout();" role="button" aria-haspopup="true">
              <div class="media align-items-center">
                <span class="avatar avatar-sm rounded-circle">
                  <img alt="Image placeholder" src="profile.png">
                </span>
                <div class="media-body ml-2 d-none d-lg-block">
                  <span style="color:black;" class="mb-0 text-sm  font-weight-bold">Logout</span>
                </div>
              </div>
            </button>
          </li>
        </ul>
      </div>
    </nav>
    <!-- Header -->
    <div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center" style="min-height: 600px; background-image: url(hospital.jpg); background-size: cover; background-position: center top;">
      <!-- Mask -->
      <!-- <span class="mask bg-gradient-default opacity-8"></span>-->
      <!-- Header container -->
      <div class="container-fluid d-flex align-items-center">
        <div class="row">
          <div class="col-lg-7 col-md-10">
            <h1 class="display-2 text-black">Hello <%=StudentDashboardBB.studentName%></h1>
            <p class="text-black mt-0 mb-5"><%=StudentDashboardBB.headerText%></p>
            <!--<a href="#!" class="btn btn-info">Edit profile</a>-->
          </div>
        </div>
      </div>
    </div>
    <!-- Page content -->
    <div class="container-fluid mt--7">
      <div class="row">
        <div class="col-xl-4 order-xl-2 mb-5 mb-xl-0">
          <div class="card card-profile shadow">
            <div class="row justify-content-center">
              <div class="col-lg-3 order-lg-2">
                <div class="card-profile-image">
                  <a href="#">
                    <img src="profile.png" class="rounded-circle">
                  </a>
                </div>
              </div>
            </div>
            <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
              <div class="d-flex justify-content-between">
                <a href="#" style="display:none;" class="btn btn-sm btn-default float-right">Feedback</a>
              </div>
            </div>
            <div class="card-body pt-0 pt-md-4">
              <div class="row">
                <div class="col">
                  <div class="card-profile-stats d-flex justify-content-center mt-md-5">
                    <div>
                      <span class="heading" style="font-size: 0.8rem;"><%=StudentDashboardBB.enrollmentNo%></span>
                      <span class="description">Enrollment Id</span>
                    </div>
                    <div>
                      <span class="heading" style="font-size: 0.8rem;text-transform: lowercase;"><%=StudentDashboardBB.semesterStr%></span>
                      <span class="description">Semester</span>
                    </div>
                    <div>
                      <span class="heading" style="font-size: 0.8rem;"><%=StudentDashboardBB.collegeRollNo%></span>
                      <span class="description">College Id</span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="text-center">
                <h3>
                  <%=StudentDashboardBB.studentName%>
                </h3>
                <div class="h5 font-weight-300">
                  <i class="ni location_pin mr-2"></i>Enrollment Id : <%=StudentDashboardBB.enrollmentNo%>
                </div>
                <div class="h5 mt-4">
                  <i class="ni business_briefcase-24 mr-2"></i><%=StudentDashboardBB.course%>
                </div>
                <div>
                  <i class="ni education_hat mr-2"></i><%=StudentDashboardBB.emailId%>
                </div>
                <hr class="my-4">
                <p><%=StudentDashboardBB.studentName%> you are Bonafied Student of Kalindi College, Delhi University. We hope that you will have a wonderful experience here.</p>
                <div class="col-4 text-right" style="left:30%">
                  <button onclick="openChoiceScreen()" class="btn btn-sm btn-primary">Select Elective Subjects</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-8 order-xl-1">
          <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0">My Today's Schedule</h3>
                </div>
                <div class="col-4 text-right">
                  <button onclick="markOpinion()" class="btn btn-sm btn-primary">Mark Your Opinion</button>
                </div>
              </div>
            </div>
            <!-- Table Data here -->
            <div class="card-body">
           
           
  <table id="customers">
  <tr>
    <th>L/T</th>
    <th>Lecture Time</th>
    <th>Subject Name</th>
    <th>Teacher Name</th>
    <th>Location</th>
  </tr>
  <%List<TimetableDTO> list = StudentDashboardBB.timeTableList;
  if(list !=null){
  for(TimetableDTO data : list){ %>
  <tr>
    <td><%=data.getLabOrTutString()%></td>
    <td><%=data.getSlotName()%></td>
    <td><%=data.getSubjectName()%></td>
    <td><%=data.getTeacherName()%></td>
    <td><%=data.getLocation()%></td>
  </tr>
  <%} }%>
 </table>
 
 
            </div>
          </div>
        </div>
 <!-- From here.................................. -->

 <!-- Till here .................. -->
      </div>
    </div>
  </div>
  <footer class="footer">
    <div class="row align-items-center justify-content-xl-between">
      <div class="col-xl-6 m-auto text-center">
        <div class="copyright">
          <p>Developed by <a href="teampage.html" target="_blank">Tech Elites</a></p>
        </div>
      </div>
    </div>
  </footer>
  </div>
  
  <!-- For Incorrect Login Credentials -->
  <div style="display:<%=StudentDashboardBB.displayLoginErrorScreen%>">
  <br><br>
  <h1 style="text-align:center;"><%=StudentDashboardBB.loginErrorText%></h1>
  <button id="buttonTab" class="buttonBack" onclick="goToLoginPage()" style="display:block">Go back to Home page</button>
  </div>
  
  <!-- Pop up tab -->
<div id="popupModel" class="popup">
  <!-- Pop up content -->
  <div class="popup_content">
    <span class="closePopup">&times;</span>
    <p>Some text in the Modal..</p>
  </div>
</div>

</body>
</html>