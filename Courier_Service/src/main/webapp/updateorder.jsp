<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<center>
	<h1>Order Details</h1>
</center>
<hr></hr>
<style>

#table1 {
	border-collapse: separate;
	border-spacing: 5px;
}

#table2 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -35px;
}

</style>
</head>
<body>
<c:forEach var="courier" items="${listCourier}">
<div style="color: red">${msg}</div>
<form action="../update" method="post">
<div style="border: 1px solid black; padding: 20px; font-size: 20px">
<label >Order Number: </label> 
<input type="number" name="orderno" value="${courier.orderno}">
<table id="table1">
<tr>
<th><label >Status:</label> <select id="statusSelect" name="status">
							
					<option value="Open">Open</option>
					<option value="Delivered">Delivered</option>
					<option value="Cancelled">Cancelled</option>
</select></th>
</tr></table>

<table style="float: right" id="table2">
								<tr>
								<th><label>Delivery Date: </label> 
								<input type="date" id="deliveryDate" name="deliverdon"  size="15"/></th>
				</tr></table>
<button type="submit"  >Save</button>
<button onclick="window.location.href='../home'">Cancel</button>					
</div>
</form>
</c:forEach> 
</body>
</html>