<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="js/bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery/jquery-3.3.1.min.js"></script>
<!-- <script type="text/javascript" src="js/login.js"></script> -->
<meta charset="ISO-8859-1">
<title>AddressBook</title>
<script>
function validate(){
	if(document.getElementById("UserId").value==""){
		//alert("Id field can't be empty");
		document.getElementById("msg").innerHTML="Id field can't be empty";
		return false;
	}
	else if(document.getElementById("Password").value==""){
		//alert("Password field can't be empty");
		document.getElementById("msg").innerHTML="Password can't be empty";
		return false;
	}
	else {
		return true;
	}
}
</script>
</head>
<body>
	<div style = "padding: 180px; margin:auto; background :silver;background-image:url(addressbook-image.png) ; background-repeat: no-repeat ; background-position: right ;background-attachment: fixed;background-size: 49%  ;">  <!--  /*200 Space */ -->
		<div id="msg" style="color: black"></div>
		<div
			style="color:black; 
			font-family: Times New Roman Times, serif">
			<h1><b>Login </b></h1>
		</div>
		<div style="width: 1000px; margin: auto; padding-top: 30px;">

		<form class="form-horizontal" id="lform" method="post" action="userlogin.htm">

		
			<p id="mesg"></p>
			<div class="alert alert-danger" role="alert" id="messageDiv"
				style="display: none"></div>
				
			<div class="form-group ">
				<label class="control-label col-sm-4" for="email">User Name:</label>
				<div class="col-sm-4">
					<input class="form-control" type="text" id="username" name="username"
						placeholder="Enter Name">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-4" for="pwd">Password:</label>
				<div class="col-sm-4">
					<input type="password" class="form-control" id="password"
						placeholder="Enter password" name="password">
				</div>
			</div>
			<div class="checkbox">
				<div class="col-sm-offset-4 col-sm-10">
					<label><input type="checkbox" value="">Remember me</label>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-6 col-sm-100">
					<button type="submit" class="btn btn-success" id="login">Submit</button>
				
				</div>
			</div>
		</form>
	</div>
		
	</div>


</body>
</html>
