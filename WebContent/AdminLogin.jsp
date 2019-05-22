<!DOCTYPE html>
<html lang="en">
<head>
  <title>AdminLogin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<%
	String status = null;
	if (request.getAttribute("status") != null) {
		status = request.getAttribute("status").toString();
	}
%>
<script type="text/javascript" src="js/AdminLoginValidation.js"></script>
<body>
<form action="LoginServlet" method="post ">
<div class="container">
  <h2>Admin Login</h2>
    <div class="form-group">
      <label for="UserId">UserId:</label>
      <input type="UserId" class="form-control" name="UserId" id="UserId" placeholder="EnterUserId"  onblur="UserIdValidation()"><span id="UserIdError" style="color: red"> </span>
    </div>
    <div class="form-group">
      <label for="Password">Password:</label>
      <input type="password" class="form-control"  name="Password" id="Password" placeholder="Enter Password" name="pwd" onblur="PasswordValidation()"><span id="PasswordError" style="color: red"> </span> <br></td>
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    
    <input type="submit" value="Submit" class="btn btn-info">
    
    
    
    <div class="text-right"><a href="AdminRegister.jsp" class="btn btn-info" role="button">Register</a></div>
 </div> 
 <span><% if(status!=null)
	 {
	 	out.print(status);
	 }%></span>
 </form>


</body>
</html>
