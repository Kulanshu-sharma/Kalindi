<%@page import="dtos.TertiaryDTO"%>
<%@page import="bussinessLayer.FillSubjectChoicesBB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Kalindi College : University of Delhi</title>
<link rel="stylesheet" href="style.css">
<link rel="icon" href="https://www.kalindicollege.in/wp-content/themes/kalindi/assets/images/kc-logo.png"> 
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&family=Poppins:wght@300;400;500;600&display=swap">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="styleshhet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css">
<%FillSubjectChoicesBB.init(request);%>
</head>
 <style>
       .header {
    min-height: 10vh;
    width: 100%;
}


nav img {
    width: 257.9px;
    height: 73.03px;
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
  		   width: 15%;
  		   opacity: 0.9;
  		   border-radius: 47px;
        }
        #semester, #courses, #department{
  			width: 50%;
  			padding: 15px;
  			margin: 5px 0 22px 0;
  			display: inline-block;
  			border: none;
  			background: aliceblue;
  			border-radius: 47px;
        }
        
        .tags{
              font-family: cursive;
        }

button:hover {
  opacity:1;
}
    </style>
<body>
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
 
 <section style="background-image:none; padding:0px;" class="cta">
 <h2 style="color: black;font-family: fantasy;">Register Your Elective Subjects</h2><br>
 <form id="signup-form" action="studentSignup.jsp" method="post">
            <select id="semester" name="semester">
               <option value="0">Select Subject Category</option>
               <option value="1">General Electives (GE)</option>
               <option value="3">AEC</option>
               <option value="4">VAC</option>
               <option value="5">SEC</option>
               <option value="6">Sports</option>
               <option value="7">Activity</option>
            </select><br>
            <select id="semester" name="semester">
                <option value="0">Select Subject Name</option>
                <%for(TertiaryDTO data : FillSubjectChoicesBB.subjectsList){ %>
              <option value=<%=data.getKey()%>><%=data.getValue()%></option>
              <%} %>
            </select><br><br>
            <h4 style="color:red;">Note : Select Each Subject Category one by one!!!</h4>
 <button type="submit" onclick="validateform()">Go</button>
 </form>
  </section>
<!--FOOTER-->

<section class="footer">
    <h4>About Tech Elites</h4>
    <div class="icon">
        <i class="fa-brands fa-facebook" style="color: #3d79e1;"></i>
        <i class="fa-brands fa-twitter" style="color: #4081f2;"></i>
        <a href="https://www.instagram.com/tech__elites/"><i class="fa-brands fa-instagram" style="color: #df1174;"></i></a>
        <i class="fa-brands fa-linkedin" style="color: #2365d7;"></i>
        <i class="fa-brands fa-youtube" style="color: #ef343d;"></i>
    </div>
    <p style="text-align: center;">Made with &hearts; by Tech Elites.</p>
    
</section>

<!--COPYRIGHT-->

<div class="copyright">
    <p style="text-align: center;"> &copy; 2023 Kalindi College All rights reserved.</p>
</div>

<!-- JAVASCRIPT-->

    <script>
        var navLinks = document.getElementById("navLinks");
        function showMenu(){
            navLinks.style.right="0";
        }
        function hideMenu(){
            navLinks.style.right="-200px";
        }
    </script>
</body>
</html>