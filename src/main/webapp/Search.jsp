<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="js/Login.js"></script>
<script type="text/javascript" src="js/register.js"></script>
<link rel="stylesheet" type="text/css" href="css/myfunctions.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Search Page</title>
<style>
div.a {
	text-align: center;
	background: silver;
	font-family: "Times New Roman", Times, serif;
}
</style>
</head>
<body>
	<form>
		<div class="card-header" style="background-color: lavender;">
			<center class="card text-white bg-primary mb-5"
				style="max-width: 140rem;">
				<h2>Search Page in Address Book</h2>
			</center>
			<div class="card-body"></div>
			<div class="form-group">
				<br> <br> <label for="sel1">Select from below drop
					down list (select one):</label> <select class="form-control" id="sel1">
					<option>Search by First Name</option>
					<option>Search by Last Name</option>
					<option>Search by ID</option>
				</select>
			</div>
		</div>
		<div>
			<a href="#SearchResults"
				class="btn btn-primary active" data-toggle="collapse" role="button"
				aria-expanded="false" aria-pressed="true">Search Results</a> <a
				href="index.jsp" class="btn btn-primary active" role="button"
				aria-pressed="true">Main Menu</a>

			<button type="button" class="btn btn-primary disabled">Invalid
				Search</button>
			<br>
			<div class="collapse" id="SearchResults">
				<div class="card card-body">


					<div class="alert alert-success">
						<strong>Success!</strong> Below are the results:
					</div>
					<table class="table">
						<thead>
							<tr>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Kiran</td>
								<td>Reddy</td>
								<td>kiran.reddy@addressbook.com</td>
							</tr>
							<tr>
								<td>Rahman</td>
								<td>Shaik</td>
								<td>rahman.shaik@addressbook.com</td>
							</tr>
							<tr>
								<td>Shyam</td>
								<td>Reddy</td>
								<td>shyam.reddy@addressbook.com</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<br>
		<br>
		<br> <label for="sel1">Either you can use above drop down list 
			or below search box </label>
		<div class="input-group">
			<input type="text" class="form-control"
				placeholder="Search by Name or ID " name="search">
			<div class="input-group-btn">
				<a href="#SearchResults"></a>
				<button class="btn btn-default" type="submit">
					<i class="glyphicon glyphicon-search"></i>
				</button>
			</div>
		</div>
		<!-- 		<div class="alert alert-warning">
			<strong>Warning!</strong> Please try again
		</div> -->
	</form>
</body>
</html>