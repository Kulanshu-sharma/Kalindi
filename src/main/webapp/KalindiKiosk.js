/**
 * 
 */
function logout() {
	  if(confirm("Are you Sure you want to Logout?")){
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange=function() {
	    if (this.readyState == 4 && this.status == 200) {
	      
	    	//window.open("doctorSignup.html");
	    
            window.close();
            window.location.href="Login_Screen.html";
	    }
	  };
	  xhttp.open("GET", "bussinessLayer/KalindiServletKiosk?rqst=1", false);
	  xhttp.send();
      }
	}
	
function goToLoginPage(){
	        window.location.href="Login_Screen.html";
}

function openChoiceScreen(){
	window.location.href="fillSubChoices.jsp";
}

function markOpinion(){
	window.location.href="COMINGSOON.html";
}

function goToHomePage(){
	        window.location.href="index.jsp";
}
function goToDashboardPage(){
	        window.location.href="studentDashboard.jsp";
}