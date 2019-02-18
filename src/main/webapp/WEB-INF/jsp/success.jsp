<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <link rel="stylesheet" href="js/bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery/jquery-3.3.1.min.js"></script>
 -->

<meta charset="ISO-8859-1">
<title>AddressBook</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery/jquery-3.3.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/success.js"></script>
<style>
div.a {
	text-align: center;
	background: silver;
	font-family: "Times New Roman", Times, serif;
}
</style>

<!-- <script src="js/add.js"></script> -->
</head>
<body>
	<div class="a">
		<div class="container">
			<h1>
				<b>Address Book</b>
				<!-- <span class="label label-primary">Address Book</span> -->
			</h1>
		</div>
	
		<div class="alert alert-success" id="registerMsgDiv" style="display: none;padding-bottom:10px;"></div>
    </div>
</body>

<div>
	<ul class="nav nav-tabs">
		<li><a data-toggle="tab" href="#register">Add</a></li>

		<li><a data-toggle="tab" href="#search">Search</a></li>
	</ul>
</div>

<div id="search" class="tab-pane fade" style="width: 80%; margin: auto">
	<div style="text-align: center; font-weight: bold; padding-top: 30px;"></div>
	<div class="row"></div>
	
	<div class="form-group ">
				<label class="control-label col-sm-2" for="userid">UserId:</label>
				<div class="col-sm-2">
					<input class="form-control" type="text" id="userid" name="userid">
					
					<button type="button" id="searchBtn" class="btn btn-success">Search</button>
				</div>
	</div>
			
</div>

<div id="register" class="tab-pane fade" style="width: 80%; margin: auto">
	<div style="text-align: center; font-weight: bold; padding-top: 30px;"></div>
	<div class="row"></div>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">General Information</h3>
		</div>
		<div class="panel-body">

			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="text" name="first_name" id="fName"
							class="form-control" placeholder="First Name" tabindex="1"
							autocomplete="off">
					</div>
				</div>

				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="text" name="last_name" id="lName"
							class="form-control " placeholder="Last Name" tabindex="2">
					</div>
				</div>

				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="text" name="gender" id="gender" class="form-control"
							placeholder="Gender" tabindex="3" autocomplete="off">
					</div>
				</div>

				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="form-group">
						<input type="text" name="dob" id="dateOfBirth"
							class="form-control" placeholder="Date of Birth" tabindex="4"
							autocomplete="off">
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">Address</h3>
		</div>

		<div class="panel-body">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<div class="form-group">
					<input type="text" name="userAddress" id="streetAddr"
						class="form-control" placeholder="Street Address" tabindex="5"
						autocomplete="off">
				</div>
			</div>
			
			<div class="col-xs-12 col-sm-4 col-md-4">
				<div class="form-group">
					<input type="text" name="city" id="city" class="form-control"
						placeholder="City name" tabindex="6" autocomplete="off">
				</div>
			</div>
			
			<div class="col-xs-12 col-sm-4 col-md-4">
				<div class="form-group">
					<input type="text" name="state" id="state" class="form-control"
						placeholder="State Name" tabindex="7" autocomplete="off">
				</div>
			</div>
			
			<div class="col-xs-12 col-sm-4 col-md-4">
				<div class="form-group">
					<input type="text" name="zip" id="zipCode" class="form-control"
						placeholder="Zip code" tabindex="8" autocomplete="off">
				</div>
			</div>
		</div>
	</div>
	
	<div class="panel panel-primary" id="contactinfo">
		<div class="panel-heading">
			<h3 class="panel-title">Contact Information</h3>
		</div>

		<div class="panel-body">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<div class="form-group">
					<input type="text" name="homephone" id="homePhone"
						class="form-control" placeholder="Home Phone" tabindex="9"
						autocomplete="off">
				</div>
			</div>
			
			<div class="col-xs-12 col-sm-4 col-md-4">
				<div class="form-group">
					<input type="text" name="officephone" id="ofcPhone"
						class="form-control" placeholder="Office Phone" tabindex="10"
						autocomplete="off">
				</div>
			</div>
			
			<div class="col-xs-12 col-sm-4 col-md-4">
				<div class="form-group">
					<input type="text" name="cellphone" id="cellPhone"
						class="form-control" placeholder="Cell Phone" tabindex="11"
						autocomplete="off">
				</div>
			</div>
			
			<div class="col-xs-12 col-sm-4 col-md-4">
				<div class="form-group">
					<input type="text" name="email" id="email" class="form-control"
						placeholder="Email" tabindex="12" autocomplete="off">
				</div>

			</div>
			
			<button type="button" id="add" class="btn btn-success">+</button>
		</div>
	</div>

	<div>
		<button type="button" id="registerBtn" class="btn btn-success">Add</button>
	</div>

</div>

</html>