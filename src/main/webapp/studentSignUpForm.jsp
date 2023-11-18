<%@page import="bussinessLayer.StudentSignUpFormBB" import="dtos.*" import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
       .header {
    min-height: 10vh;
    width: 100%;
}


nav img {
    width: 257.9px;
    height: 73.03px;
}
 body {
            font-family: Arial Black, ComicSansMS;
            background-image: url(campus3.jpg);
      }
      .split{
		  margin-top:5%;
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


@media (min-width: 1200px) {
  .split {
    display:flex;
  }
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
            <a href="index.html" class="logo"><img src="logo.png"></a>
     </nav></section> 
	 <section class="signup">
		<div class="split"> 
		 <div class="container"> 
		 <img src = "signupPic.jpg">
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
