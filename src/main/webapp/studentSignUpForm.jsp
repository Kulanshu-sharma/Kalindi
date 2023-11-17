<%@page import="bussinessLayer.StudentSignUpFormBB" import="dtos.*" import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<link rel="icon" href="https://www.kalindicollege.in/wp-content/themes/kalindi/assets/images/kc-logo.png"> 
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&family=Poppins:wght@300;400;500;600&display=swap">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="styleshhet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css">

    <style>
    .header {
    min-height: 30vh;
    width: 100%;
    background-image: linear-gradient(rgba(4,9,30,0.7), rgba(4,9,30,0.7)), url(bg-img.jpeg);
    background-size: cover;
    background-position: center;
    position: relative;
}

nav {
    display: flex;
    padding: 2% 4%;
    justify-content: space-between;
    align-items: center;
}

nav img {
    width: 257.9px;
    height: 73.7px;
}

.nav-links {
    flex: 1;
    text-align: right;
    margin-right: -60px;
}

.nav-links ul li {
    list-style: none;
    display: inline-block;
    padding: 8px 12px;
    position: relative;
}

.nav-links ul li a {
    color: #fff;
    text-decoration: none;
    font-size: 13px;
}

.nav-links ul li::after{
    content: '';
    width: 0%;
    height: 2px;
    background: #7b71e6;
    display: block;
    margin: auto;
    transition: 0.2s;
}

.nav-links ul li:hover::after {
    width: 50%;
}
 body {
            font-family: Arial Black, ComicSansMS;
            background-image: url(campus3.jpg);
      }
      .split{
		  margin-top:5%;
		  display:flex;
		  justify-content:space-evenly;
		  }
	   .container{
		   flex-basis: 47%;
		   background-color:ghostwhite;
		   border-radius: 10px;
		   margin-bottom:5%;
		   padding: 20px 12px;
		   position:relative;
		   overflow: hidden;
	   } 
	   .container img{
		   width:100%;
		   height:100%;
		   display: block;
	   }   
       h1 {
               text-align: center;
        } 
        input[type="text"],input[type="password"],input[type="email"],input[type="file"],input[type="date"]{
			  width: 90%;
              padding: 15px;
  		      margin: 5px 0 22px 0;
 		      display: inline-block;
  		      border: none;
  			  background: white; 
			  border-radius: 47px;
		}

       .error-message {
            color: red;
            display: none;
        }
        .error-border {
            border: 1px solid red;
        }

        .copyright{
           background-color: rgb(115, 23, 169);
           text-align: center;
        }
        button {
           background-color: #04AA6D;
  		   color: white;
  		   padding: 14px 20px;
  		   margin: 8px 0;
  		   border: none;
  		   cursor: pointer;
  		   width: 95%;
  		   opacity: 0.9;
        }
        #semester, #courses, #department{
  			width: 95%;
  			padding: 15px;
  			margin: 5px 0 22px 0;
  			display: inline-block;
  			border: none;
  			background: white;
  			border-radius: 47px;
        }
        .tags:after {
          content:" *";
          color: red;
        }
        .tags{
              font-family: cursive;
        }

button:hover {
  opacity:1;
}
    </style>
    <%
       StudentSignUpFormBB.init(request); 
       List<BinaryDTO> courseList = StudentSignUpFormBB.coursesList;
       List<BinaryDTO> departmentList = StudentSignUpFormBB.departmentList; 
    %>
</head>
<section class="header">
        <nav>
            <table class="logo">
				<tr>
					<td class="logo-img"><img src="kalindi-logo.png"></td>
					<td class="logo-cont">
						<h1 class="logoTitle">Kalindi College</h1>
		            	<h3 class="logoTitle">UNIVERSITY OF DELHI</h3>
		            	<h3 class="logoTitle">ACCREDITED WITH GRADE 'A+' BY NAAC</h3>
					</td>
				</tr>
			</table>
			
            <div class="nav-links" id="navLinks">
                <i class="fas fa-times" onclick="hideMenu()"></i>
                <ul><b>
                    <li><a href="frontpage.html"><b>HOME</b></a></li>
                    <li><a href="about.html"><b>ABOUT</b></a></li>
                    <li><a href="course.html"><b>COURSE</b></a></li>
                    <li><a href="admission.html"><b>ADMISSION</b></a></li>
                    <li><a href="contact.html"><b>CONTACT</b></a></li>
                    <li><a href="principal.html"><b>INFO</b></a></li>
                     <li><div class="login">
						  <a href="#" class="dropbtn"><b>LOGIN</b></a>
						  <div class="login-content">
						    <div class="option1"><a href="Login_Screen.html"><b>Student</b></a><br><hr></div>
						    <div class="option2"><a href="#"><b>Faculty</b></a><br></div>
						    <!--<div class="option3"><a href="#"><b>Alumni</b></a></div>-->
						  </div>
						</div>
					 </li>		
                    
                    <li><a href="Gallery.html"><b>GALLERY</b></a></li></b>
                </ul>
            </div>
            <i class="fas fa-bars" onclick="showMenu()"></i>
        </nav>

    </section>


	 <section class="signup">
		<div class="split"> 
		 <div class="container"> 
		 <img src = "https://img.lovepik.com/element/45009/2311.png_860.png">
		 </div>
		 <div class="container">
			 <h1 style="color: cadetblue;font-family: fantasy;"> Student Registration</h1>
        <form id="signup-form" action="studentSignup.jsp" method="post">
            <label class="tags" for="name">Name</label>
            <input type="text" id="name" name="name" placeholder="Please enter your name..." required><br>
            
            <label class="tags" for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="Please enter your email Id..." required><br>
            
            <label class="tags" for="enrollmentNumber">Enrollment Number:</label>
            <input type="text" id="enrollmentNumber" name="enrollmentNumber" placeholder="Please enter your Enrollment Number..." required><br>
            
            <label class="tags" for="rollNumber">College Roll Number:</label>
            <input type="text" id="rollNumber" name="rollNumber" placeholder="Please enter your College Roll no..." required><br>
            
            <label class="tags" for="department">Select Department:</label>
            <select id="department" name="department">
            <%for(int i=0;i<departmentList.size();i++){ %>
              <option value=<%=departmentList.get(i).getKey()%>><%=departmentList.get(i).getValue()%></option>
              <%} %>
            </select><br>

             <label class="tags" for="courses">Select a course:</label>
             <select id="courses" name="courses">
             <%for(int i=0;i<courseList.size();i++){ %>
              <option value=<%=courseList.get(i).getKey()%>><%=courseList.get(i).getValue()%></option>
              <%} %>
            </select><br>
            
            <label class="tags" for="semester">Select Semester:</label>
            <select id="semester" name="semester">
               <option value="1">Semester 1</option>
               <option value="2">Semester 2</option>
               <option value="3">Semester 3</option>
               <option value="4">Semester 4</option>
               <option value="5">Semester 5</option>
               <option value="6">Semester 6</option>
               <option value="7">Semester 7</option>
               <option value="8">Semester 8</option>
            </select><br>
               
            <label style="font-family: cursive;" for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" required><br>          
            
            <label style="font-family: cursive;" for="photo">Upload Photo:</label>
            <input type="file" id="photo" name="photo"><br>

            <label class="tags" for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Please enter password..." required><br>

            <label class="tags" for="repassword">Re-enter Password:</label>
            <input type="password" placeholder="Repeat Password" id="psw_repeat" name="psw-repeat" maxLength="20" onkeyup="match_confirm_password()" required>
            <span id='message'></span><br><br>  
            <div class="error-message" id="'passwordError"> Password doesn't match </div>

            <button type="submit" onclick="validateform()">Register</button>
        </form>
      </div>
    </div>
	 </section> 
	 <section class="footer">
    <h4>About Us</h4>
    <div class="icon">
        <i class="fa-brands fa-facebook" style="color: #3d79e1;"></i>
        <i class="fa-brands fa-twitter" style="color: #4081f2;"></i>
        <i class="fa-brands fa-instagram" style="color: #df1174;"></i>
        <i class="fa-brands fa-linkedin" style="color: #2365d7;"></i>
        <i class="fa-brands fa-youtube" style="color: #ef343d;"></i>
    </div>
    <p>Made with &hearts; by Tech Elites.</p>
 </section>
  
<div class="copyright">
    <p>&copy; 2023 Kalindi College All rights reserved.</p>
</div>
    <script>
      function validateform() {
  //        var userType = document.getElementById('userType').value;
  //        var name = document.getElementById('name').value;
          var password = document.getElementById('password').value;
          var repassword = document.getElementById('repassword').value;
          var passwordError = document.getElementById('passwordError');

          if (password === "" || repassword === "") {
                passwordError.textContent = "Password fields cannot be empty";
                passwordError.style.display = 'block';
                document.getElementById('password').classList.add('error-border');
                document.getElementById('repassword').classList.add('error-border');
          }

          else if (password !== repassword) {
              passwordError.textContent="Password do not match";
              passwordError.style.display = 'block';
              document.getElementById('password').classList.add('error-border');
              document.getElementById('repassword').classList.add('error-border');
          } else {
              passwordError.style.display = 'none';
              document.getElementById('password').classList.remove('error-border');
              document.getElementById('repassword').classList.remove('error-border');
              alert('Sign up successful !!');
          }
      }
      
     function match_confirm_password() {
    	  if (document.getElementById('password').value ==
    	    document.getElementById('psw_repeat').value) {
    	    document.getElementById('message').style.color = 'green';
    	    document.getElementById('message').innerHTML = 'Kudos! Password Matched!!';
    	  } else {
    	    document.getElementById('message').style.color = 'red';
    	    document.getElementById('message').innerHTML = 'Password is not matching!!';
    	  }
    	}
      </script>
</body>
</html>
