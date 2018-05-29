<!DOCTYPE html>
<html>
<title>UrDistrict</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	
<link rel="stylesheet" type="text/css" href="css/structure.css">
<!-- FOR TABS >-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>

</style>
<body class="w3-black">

	<!-- Device Navigation -->
	<div class="w3-top w3-hide-large w3-hide-medium" id="myNavbar">
		<div
			class="w3-bar w3-black w3-opacity w3-hover-opacity-off w3-center w3-small">
			<a href="#" class="w3-bar-item w3-button"
				style="width: 25% !important">HOME</a> <a href="#about"
				class="w3-bar-item w3-button" style="width: 25% !important">ABOUT</a>
			<a href="#photos" class="w3-bar-item w3-button"
				style="width: 25% !important">PHOTOS</a> <a href="#contact"
				class="w3-bar-item w3-button" style="width: 25% !important">CONTACT</a>
		</div>
	</div>
	<!-- End Navigation -->
	


	<!-- Begin Navigation -->
	<nav id="navigation"
		class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">

		<jsp:include page="ViewMenuNotLogged.jsp" />

	</nav>
	<!-- End Navigation -->



	<!-- Page Content -->
	<div class="w3-padding-large" id="main">


		<!-- TopTopics -->
		<div class="w3-content w3-justify w3-text-grey " id="topTopics"
			style="margin-top: 64px;">
			<h2 class="w3-text-light-grey">Top Topics</h2>

			<div class="w3-row w3-center w3-padding-16 w3-section w3-light-grey">

				<div class="w3-quarter w3-section top-topic-item">
					#Vandalism <br> <span>150+</span>
				</div>
				<div class="w3-quarter w3-section top-topic-item">
					#Vandalism <br> <span>150+</span>
				</div>
				<div class="w3-quarter w3-section top-topic-item">
					#Vandalism <br> <span>150+</span>
				</div>
				<div class="w3-quarter w3-section top-topic-item">
					#Vandalism <br> <span>150+</span>
				</div>
				<div class="w3-quarter w3-section top-topic-item">
					#Vandalism <br> <span>150+</span>
				</div>
			</div>
		</div>
		<!-- TopTopics -->


		<div class="w3-content w3-justify w3-text-grey " id="topTopics">
		</div>





		<ul class="nav nav-tabs" style="border: none;">
			<li class="active"><a class="myTab" data-toggle="tab"
				href="#loudestVoices"><h2 class="w3-text-black">Hottest
						voices</h2></a></li>
			<li><a class="myTab" data-toggle="tab" href="#mostClapped">
					<h2 class="w3-text-black">Most clapped</h2>
			</a></li>
		</ul>

		<div class="container-fluid"
			style="background-color: white; border-radius: 5px; border-top-left-radius: 0px;">
			<div class="tab-content">
				<div id="loudestVoices" class="tab-pane fade in active"
					style="background-color: white;">
					<p>Loudest voices</p>
				</div>
				<div id="mostClapped" class="tab-pane fade">
					<p>Most clapped voices</p>
				</div>

			</div>
</body>
</html>

<script>

  function toggle_login() {
    $("#loginBox").slideToggle('slow');


  }

  function onDocumentLoad(){
      $("#loginBox").hide();
  }

  onDocumentLoad();
  </script>