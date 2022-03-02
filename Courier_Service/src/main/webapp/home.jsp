<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<center>  <h1> ABC COURIER SERVICES</h1> </center>  
<style>

#div1 {
margin-right:30px;  
float: right;
}

#div2 {
padding:15px;
}

</style>
</head>
<div id="div1"><a href="./login">Login</a></div>
<div id="div2"></div>
<hr></hr>
<body>
<style>
#div3 {
text-align:center;
margin-bottom:50px; 
font-weight:bold; 
}

#div4 {
text-align:center;
margin-top:10px; 
}

</style>
<div style="border:1px solid black;padding:20px;font-size:20px">
<div id="div3">Track Order</div>
<center> 
<label for="Enter Order Number">   
<b>Enter Order Number: </b>     
</label> 
<input type="text" id="orderId" name="orderno" placeholder= "Order Number" required />   
</center>
<div id="div4"><button type="submit"><a href = "javascript:;" onclick = "this.href='track/' + document.getElementById('orderId').value">Track</a></button></div>
</div>
</body>
</html>