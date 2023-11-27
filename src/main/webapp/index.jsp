<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scle=1.0">
<title>Kalindi College : University of Delhi</title>
<link rel="stylesheet" href="style.css">
<link rel="icon" href="https://www.kalindicollege.in/wp-content/themes/kalindi/assets/images/kc-logo.png"> 
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&family=Poppins:wght@300;400;500;600&display=swap">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="styleshhet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css">
</head>
<style>
#center {
  display: block;
  margin-left: auto;
  margin-right: 19rem;
  width: 25%;
}
	@media (max-width: 500px) {
    .logo img {
    margin-left: -25px;
    height: 5rem;
	width: 78px;
	}
	.logoTitle {
	font-size: 20px;
	}
	.logo h3{
	font-size: 9px;
	}
	.option1{
	  margin-right: 36%;
	}
	.option2{
	  margin-right: 36%;
	}
	#center{
		width: 50%;
		margin-left:30px;
	}
	#msg {
		margin-left:18rem;
		taxt-align:justify;
	}
	.notice-col{
		width:100%;
		height:100vh;
		margin-left:0;
		margin-left:-250px;
		text-align: justify;
		
	}
	
	
	
	
  }
</style>
<body>
	<section style="min-height: 100vh;" class="header">
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
                    <li><a href="frontpage.html">HOME</a></li>
                    <li><a href="about.html">ABOUT</a></li>
                    <li><a href="course.html">COURSE</a></li>
                     <li><div class="Notice">
						  <a href="#" class="dropbtn">NOTICE</a>
						  <div class="login-content">
						    <div class="option1"><a href="https://www.kalindicollege.in/notice/#general"><b>General</b></a><br><hr></div>
						    <div class="option2"><a href="https://www.kalindicollege.in/notice/#students"><b>Students</b></a><br><hr></div>
						    <div class="option3"><a href="https://www.kalindicollege.in/notice/#staff"><b>Staff</b></a></div>
						  </div>
						</div>
					 </li>
					 <li><div class="Events">
						  <a href="#" class="dropbtn">EVENTS</a>
						  <div class="login-content">
						    <div class="option1"><a href="https://www.kalindicollege.in/upcoming-events/"><b>Upcoming</b></a><br><hr></div>
						    <div class="option2"><a href="https://www.kalindicollege.in/past-events/"><b>Past</b></a><br></div>
						  </div>
						</div>
					 </li>	
                    <li><a href="admission.html">ADMISSION</a></li>
                    <li><a href="contact.html">CONTACT</a></li>
                    <li><a href="principal.html">INFO</a></li>
                    
                     <li><div class="login">
						  <a href="#" class="dropbtn">LOGIN</a>
						  <div class="login-content">
						    <div class="option1"><a href="Login_Screen.html"><b>Student</b></a><br><hr></div>
						    <div class="option2"><a href="#"><b>Faculty</b></a><br></div>
						    <!--<div class="option3"><a href="#"><b>Alumni</b></a></div>-->
						  </div>
						</div>
					 </li>		
                    <li><a href="Gallery.html">GALLERY</a></li>
				</b>
                </ul>
            </div>
            <i class="fas fa-bars" onclick="showMenu()"></i>
        </nav>

        <div class="text-box">
            <h1>Kalindi College</h1>
            <p>The Hidden Marvel of North Campus</p>
            <a href="https://www.kalindicollege.in/" class="btn">Visit us to know more</a>
        </div>
    </section>
    

 	<!--Principle Msg-->
	  	
	  	<div class="notice-col" style="padding:1rem 20rem 0.1rem 20rem;">
				  <div class="nb-col" >
                	<h3>Principle's Message</h3>
                	<img src="about2.jpg" class="principal-img" id="center" >
                	<div class="">
						<p id="msg" style="text-align:justify; margin-left:18rem">Dear Students! Welcome to Kalindi College.<br> Kalindi College, an institution of academic<br> excellence and achievement, was established in<br> 1967...</p><br>
                		<a href="principal.html" class="rm-btn" style="color: white; margin-left:18rem">Read more</a>
					</div>
                	
            	  </div>
				  	
			  </div>
		 
		 
	

<!-- Course -->

    <section class="course">
        <h1>Courses we offer</h1>
        <div class="row">
            <div class="course-col">
                <h3>Undergraduate</h3>
                <p>Our college offers ug degree in Science, Commerce and Arts....</p><br>
                <a href="course.html" class="rm-btn">Read more</a>
            </div>
            <div class="course-col">
                <h3>Postgraduate</h3>
                <p>Our college offers pg degree in M.A(Sanskrit), M.A(Hindi), M.A(Political Science)</p><br>
                <a href="course.html" class="rm-btn">Read more</a>
            </div>
        
        </div>
    </section>

<!--CAMPUS-->

    <section class="campus">
        <h1>College Campus</h1>
        <p>No, sky is not the limit. It is only the beginning.</p>

        <div class="row">
            <div class="campus-col">
                <img src="campus1.jpg">
            </div>
            <div class="campus-col">
                <img src="campus3.jpg">
            </div>
            <div class="campus-col">
                <img src="campus4.jpg">
            </div>
        </div>
    </section>    

<!--FACILITIES--> 

    <section class="facilities">
        <h1>Our Facilities</h1>

        <div class="row">
            <div class="facilities-col">
                <img src="library.jpg">
                <h3>World Class Library</h3>
            </div>
            <div class="facilities-col">
                <img src="cafe.jpg">
                <h3>A Hot Cup of Happiness</h3>
            </div>
            <div class="facilities-col">
                <img src="playgrnd.jpg">
                <h3>Largest Play Ground</h3>
            </div>
        </div>
        <div class="row">
			<div class="facilities-col">
                <img src="ncc.jpg">
                <a href="nccNss.html" class="rm-btn" style="margin-left: 10rem; padding-top:5px;"><b>NCC</b></a>
             </div> 
               
             <div class="facilities-col">
                <img src="nss.jpg">
                <a href="nccNss.html" class=" rm-btn" style="margin-left: 10rem; margin-top:5px;"><b>NSS</b></a>
            </div>
            
        </div>

    </section>

<!--TESTIMONIAL-->

<section class="testimonial">
    <h1>What are Students says</h1>
    <div class="row">
        <div class="testimonials-cols">
            <div>
                <p style="text-align: justify;">I distinctly remember the anxiety that kicked in on the first day of college. As a student who is just fresh out of college, it becomes haywire to adapt in a completely different environment. However, the faculty made sure that each one of us was comfortable with their kind words and gestures.</p>
                <h3>Rashi Bareja</h3>
            </div>
        </div>
        <div class="testimonials-cols">
            <div>
                <p style="text-align: justify;">As rightly said, The journey is more beautiful than the destination.When I was reflecting on my three years with Department of English at Kalindi College, I realized that I had gained more than I had ever expected.</p>
                <h3>Vanya Bardeja</h3>
            </div>
        </div>
        <div class="testimonials-cols">
            <div>
                <p style="text-align: justify;">Being associated with this college as a learner for past 3 years has been an unforgettable experience. I have joined this college as a naive but because of highly intellectual, experienced and supportive faculties I have witnessed my skill and competence rising to a zenith. </p>
                <h3>Deeksha Prakash Singh</h3>
            </div>
        </div>
    </div>
</section>

<!---CONTACT-->

<section class="cta">
    <h1>Take Admission To Make Your Future Bright</h1>
    <a href="contact.html" class="btn">Contact us</a>
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