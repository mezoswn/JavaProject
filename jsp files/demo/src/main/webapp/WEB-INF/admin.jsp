<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang=eng>
<head>
	<title>Found Pet Details Form a Responsive Widget Template :: w3layouts</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Found Pet Details Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs Sign up Web Templates, 
 Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design">
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Custom Theme files -->
	<link rel="stylesheet" href="css/jquery-ui.css" />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<!--fonts-->
	<link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600" rel="stylesheet">
	<!--//fonts-->
<meta charset="ISO-8859-1">
<title>Add Pet Page</title>
</head>
<body>
	<!--background-->
	<h1>Found Pet Details Form</h1>
	<div class="main-w3layouts-content">
		<div class="top-section">
			<!-- <h2 class="sub-hdng-agileits-w3layouts">Report Us</h2>
			<p>Please fill the form below if you find a lost pet and we will try and get it back to the owner.</p> -->
		</div>
		<div class="w3-agile-login-form">
			<form id="content" action="#" method="post">
				<h3 class="inner-hdng-agileinfo">Basic Information (Internal only)</h3>
				<div class="top-fields-wthree">
					<div class="input-fields-w3ls">
						<input type="text" name="Name" placeholder="Name" required="" />
					</div>
					<div class="input-fields-w3ls">
						<select id="country" onchange="change_country(this.value)" class="frm-field required" required="">
							<option value="">Animal Gender</option>
							<option value="">Male</option>
							<option value="">Female</option>   
							    
						</select>
						<!-- <input type="text" name="gender" placeholder="Gender" required="" /> -->
					</div>
					<div class="input-fields-w3ls">
						<input type="text" name="Age" placeholder="Age" required="" />
					</div>
				</div>
				<h3 class="inner-hdng-agileinfo">About Found Pet</h3>
				<div class="mid-fields-agileits-w3layouts">
					<div class="input-fields-w3ls2">
						<input id="datepicker" name="Text" type="text" placeholder="Date found" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}"
						    required="" />
					</div>
					<div class="input-fields-w3ls2">
						<select id="country" onchange="change_country(this.value)" class="frm-field required" required="">
							<option value="">Animal type</option>
							<option value="">Cat</option>
							<option value="">Dog</option>   
							<option value="">Other(Specify below)</option>     
						</select>

					</div>
				</div>
				<textarea name="Comments" placeholder="Description of animal" required=""></textarea>
				<textarea name="Comments" placeholder="Where found" required=""></textarea>
				<input type="submit" value="Report Now">
			</form>
		</div>
	</div>
	<div class="clear"></div>
	<div class="copy-right-w3l">
		<p>Copyright &copy; 2021 <a href="home"><img src="img/pet.png" width=30px; height="30px"></a> PetPet | AMA Team</p>
	
        <!-- <footer>
			<p>Copyright &copy; 2021 <a href="home"><img src="img/pet.png" width=30px; height="30px"></a> PetPet |
			  <em><a href="#"><i class="fa fa-facebook"></i></a></em>
			 <em><a href="#"><i class="fa fa-instagram"></i></a></em>
			 <em><a href="#"><i class="fa fa-twitter"></i></a></em>
			 <em><a href="#"><i class="fa fa-google"></i></a></em>
			 <em><a href="#"><i class="fa fa-linkedin"></i></a></em></p>
		  </footer> -->
	  
	</div>
	<!-- JavaScript plugins -->
	<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>

	<!-- Calendar -->
	<script src="js/jquery-ui.js"></script>
	<script>
		$(function () {
			$("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
		});
	</script>
	<!-- //Calendar -->
	<!--// JavaScript plugins -->
</body>
</html>