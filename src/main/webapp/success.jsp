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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style >
div.a {
    text-align: center;
    background:silver; 
     font-family: "Times New Roman", Times, serif;
}
</style>


<!-- <script src="js/add.js"></script> -->
</head>
<body>
	<div class="a">
		<div class="container">
			

			<h1> <b>Address Book</b>
				<!-- <span class="label label-primary">Address Book</span> -->
			</h1>

		</div>
	</div>
</body>
<div> 
				<ul class="nav nav-tabs">

					
					<li><a data-toggle="tab" href="#register">Add</a></li>
					
					<li><a data-toggle="tab" href="#search">Search</a></li>

				</ul>
				</div>
				
									   	<div id="register" class="tab-pane fade" style="width: 80%; margin: auto">
					   	<div style="text-align: center; font-weight: bold; padding-top: 30px;"></div>
						<div class="row">

							
						</div>
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h3 class="panel-title">General Information</h3>
							</div>
							<div class="panel-body">
							
								<div class="row">
								

								<div class="col-xs-12 col-sm-4 col-md-4">

									<div class="form-group">
										<input type="text" name="first_name" id="firstName"
											class="form-control" placeholder="First Name" tabindex="1"
											autocomplete="off">
									</div>
								</div>

								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<input type="text" name="last_name" id="lastName"
											class="form-control " placeholder="Last Name" tabindex="2">
									</div>
								</div>

								

								
								
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<input type="text" name="gender" id="gender"
											class="form-control" placeholder="Gender"
											tabindex="1" autocomplete="off">
									</div>
								</div>

								

								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<input type="text" name="dob" id="dob"
											class="form-control" placeholder="Date of Birth" tabindex="1"
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
									<input type="text" name="userAddress" id="address"
										class="form-control" placeholder="Street Address" tabindex="1"
										autocomplete="off">
								</div>
							</div>
							<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<input type="text" name="city" id="city"
											class="form-control" placeholder="City name" tabindex="1"
											autocomplete="off">
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<input type="text" name="state" id="state"
											class="form-control" placeholder="State Name" tabindex="1"
											autocomplete="off">
									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<input type="text" name="zip" id="zip"
											class="form-control" placeholder="Zip code" tabindex="1"
											autocomplete="off">
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
									<div class="form-group" >
										 <input type="text" name="homephone" id="phone"
											class="form-control" placeholder="Home Phone" tabindex="1"
											autocomplete="off">
							
  									</div>
								</div>
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<input type="text" name="officephone" id="phone"
											class="form-control" placeholder="Office Phone" tabindex="1"
											autocomplete="off">
									</div>
									
								</div>	
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<input type="text" name="cellnphone" id="cell"
											class="form-control" placeholder="Cell Phone" tabindex="1"
											autocomplete="off">
									</div>
									
								</div>	
								<div class="col-xs-12 col-sm-4 col-md-4">
									<div class="form-group">
										<input type="text" name="email" id="email"
											class="form-control" placeholder="Email" tabindex="1"
											autocomplete="off">
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