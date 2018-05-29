<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
    
<script type="text/javascript">
$(document).ready(function() {
    $(".menu").click(function(event) {
        $('#content').load('ContentController',{content: $(this).attr('id')});
        });
});
</script>


  <!-- Icon Bar (Sidebar - hidden on small screens) -->
 		  <!-- Avatar image in top left corner -->
    <a href="#" class="w3-bar-item w3-button w3-padding-large w3-black">
      <i class="fa fa-home w3-xxlarge"></i>
      <p>HOME</p>
    </a>
    <a href="#about" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
      <input class="myTextBox" placeholder="Search"/>

    </a>
    <button  class="w3-bar-item w3-button w3-padding-large w3-hover-black" onclick="toggle_login();">
      <i class="fa fa-user w3-xxlarge"></i>
      <p>LOG IN</p>
    </button>

    <a id="loginBox" class="w3-bar-item  w3-padding-large w3-hover-black">

		       
		       <jsp:include page="ViewLoginForm.jsp" />
	  		       			  
	

    </a>

    <a href="#photos" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
      <i class="fa fa-eye w3-xxlarge"></i>
      <p>REGISTER</p>
    </a>


    <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
      <i class="fa fa-envelope w3-xxlarge"></i>
      <p>CONTACT</p>
    </a>
 <a class="menu" id="LoginController" href=#> Login
