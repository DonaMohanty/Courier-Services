<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<center>  <h1> ABC COURIER SERVICES</h1> </center> 
<style>

#div1 {
text-align:center;
margin-bottom:20px; 
font-weight:bold; 
}

</style>
</head>
<body>
<div style="border:1px solid black;padding:20px;font-size:20px">
<div id="div1">LOGIN</div>
<hr></hr>

<style>
      #div2 {
             margin-left:15px; }
             
     #div3 {
text-align:center;
margin-top:10px;
margin-left:15px; 
}        
</style>
<div align="center">
		<form action="login" method="post">
			<table style="with: 100%">
				<tr>
					<td>UserName</td>
					<td><input type="text" name="username" id="username"/></td>
					<td><div id="show_usernameerror"></div></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" id="password"/></td>
					<td><div id="show_passworderror"></div></td>
				</tr>

			</table>
			<input  type="submit" value="Login" id="submit"/>
		</form>
		<div>
			<div style="color:red">${msg}</div>
		</div>
	</div>
</body>
<script>
$(document).ready(function(){
	$('#submit').click(function(){
		var user = $('#username').val();
		var pass = $('#password').val();
		if(user == ""){
			$('#show_usernameerror').html('username must be filled.');
			$('#show_usernameerror').css('color','red');
			return false;
		}
		else if(pass == ""){
			$('#show_passworderror').html('password must be filled.');
			$('#show_passworderror').css('color','red');
			return false;
		}
		
		else{
			return true;
		}
		
	})
})
</script>
</html>