<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Admin Registration</title>
<script type="text/javascript" src="js/AdminRegisterValidation.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<%
	String status = null;
	if (request.getAttribute("status") != null) {
		status = request.getAttribute("status").toString();
	}
%>

<body>

	<form action="AdminAdd" method="post ">
		<center>
			<table>
				<tr>
					<center>
						<td><h2 style="color: red;">
								<b>ABC HOSPITAL</b>
							</h2> <br> <br></td>
					</center>
				</tr>


				<tr>
					<td>First Name</td>
					<td><input type="text" name="FirstName" id="FirstName"
						required placeholder="Enter First Name"
						onblur="FirstNameValidation()"><span id="FirstNameError" style="color: red"> </span> <br></td>
					
				</tr>


				<tr>
					<td>Last Name</td>
					<td><input type="text" name="LastName" id="LastName" required
						placeholder="Enter Last Name" onblur="LastNameValidation()"><span id="LastNameError" style="color: red"> </span>
						<br></td>
					
				</tr>

				<tr>
					<td>Age</td>
					<td><input type="text" name="Age" id="Age" required
						placeholder="Enter Age" onblur="AgeValidation()"><span id="AgeError" style="color: red"> </span> <br>
					</td>
					
				</tr>

				<tr>
					<td>Gender</td>
					<td><select id="Gender" name="Gender" placeholder="select Gender" onblur="GenderValidation()" ><span id="GenderError" style="color: red"> </span>
							<option value="Select">--select--</option>
							<option value="Male">Male</option>
							<option value="Female">Female</option>
							<option value="Others">Others</option>

					</select></td>



				</tr>

				<tr>
					<td>Contact Number</td>
					<td><input type="text" name="Contact" id="Contact"
						placeholder="Enter Contact No" onblur="ContactValidation()"><span id="ContactNumberError" style="color: red"> </span>
						<br></td>
					
				</tr>

				<tr>
					<td>User Id</td>
					<td><input type="text" name="UserId" id="UserId" required
						placeholder="Enter user Id" onblur="UserIdValidation()"><span id="UserIdError" style="color: red"> </span>
						<br></td>
					
				</tr>



				<tr>
					<td>Password</td>
					<td><input type="password" name="Password" id="Password"
						required placeholder="Enter Password"
						onblur="PasswordValidation()"><span id="PasswordError" style="color: red"> </span> <br></td>
					
				</tr>
				<span style = "color:red"><%if(status !=null)
              { 
                   out.print(status);
              }
          %>
          </span>

				<tr>

					<td><br>
					<br>
					<br>
						<center>
							<input type="Submit" value="SUBMIT">
						</center></td>
				</tr>

			</table>
		</center>
	</form>
</body>
</html>

