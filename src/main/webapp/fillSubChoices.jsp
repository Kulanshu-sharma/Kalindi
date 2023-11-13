<%@page import="dtos.TertiaryDTO"%>
<%@page import="bussinessLayer.FillSubjectChoicesBB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link rel="stylesheet" href="style.css">
<link rel="icon" href="https://www.kalindicollege.in/wp-content/themes/kalindi/assets/images/kc-logo.png"> 
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&family=Poppins:wght@300;400;500;600&display=swap">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="styleshhet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css">
<%FillSubjectChoicesBB.init(request);%>
<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
}

#regForm {
  background-color: aliceblue;
  margin: 100px auto;
  font-family: Raleway;
  padding: 40px;
  width: 70%;
  min-width: 300px;
}

h1 {
  text-align: center;  
}

input {
  padding: 10px;
  width: 100%;
  font-size: 17px;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

button {
  background-color: #04AA6D;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

#prevBtn {
  background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #04AA6D;
}

.copyright{
           background-color: rgb(115, 23, 169);
           text-align: center;
}
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
        #semester, #courses, #department{
  			width: 100%;
  			padding: 15px;
  			margin: 5px 0 22px 0;
  			display: inline-block;
  			border: none;
  			background: white;
        }
       .tags{
            color: slategrey;
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
    
<form id="regForm" action="submitSubjectChoices.jsp" method="post">
  <h2 style="color: black;font-family: fantasy; text-align:center;">Choose Your Elective Subjects</h2><br>
  <!-- One "tab" for each step in the form: -->
  <div class="tab">
  <p class="tags">GE Subject(if any)</p>
    <select id="semester" name="ge">
    <option value="0">Select GE Subject ...</option>
    <%for(TertiaryDTO data : FillSubjectChoicesBB.subjectsList){ %>
         <option value=<%=data.getKey()%>><%=data.getValue()%></option>
    <%} %>
    </select>
  </div>
  <div class="tab">
  <p class="tags">AEC Subject(if any)</p>
    <select id="semester" name="aec">
    <option value="0">Select AEC Subject ...</option>
    <%for(TertiaryDTO data : FillSubjectChoicesBB.subjectsList){ %>
         <option value=<%=data.getKey()%>><%=data.getValue()%></option>
    <%} %>
    </select>
  </div>
  <div class="tab">
  <p class="tags">VAC Subject(if any)</p>
    <select id="semester" name="vac">
    <option value="0">Select VAC Subject ...</option>
    <%for(TertiaryDTO data : FillSubjectChoicesBB.subjectsList){ %>
         <option value=<%=data.getKey()%>><%=data.getValue()%></option>
    <%} %>
    </select>
  </div>
  <div class="tab">
  <p class="tags">SEC Subject(if any)</p>
    <select id="semester" name="sec">
    <option value="0">Select SEC Subject...</option>
    <%for(TertiaryDTO data : FillSubjectChoicesBB.subjectsList){ %>
         <option value=<%=data.getKey()%>><%=data.getValue()%></option>
    <%} %>
    </select>
  </div>
    <div class="tab">
  <p class="tags">DSC Subject(if any)</p>
    <select id="semester" name="dsc">
    <option value="0">Select DSC Subject...</option>
    <%for(TertiaryDTO data : FillSubjectChoicesBB.subjectsList){ %>
         <option value=<%=data.getKey()%>><%=data.getValue()%></option>
    <%} %>
    </select>
  </div>
  <div style="overflow:auto;">
    <div style="float:right;">
      <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
      <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
    </div>
  </div><br>
  <p style="color:red"><b>NOTE:</b> Choose only those subjects in which you are registered!!!</p>
  <!-- Circles which indicates the steps of the form: -->
  <div style="text-align:center;margin-top:40px;">
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
  </div>
</form>

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

<script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
</script>

</body>
</html>
