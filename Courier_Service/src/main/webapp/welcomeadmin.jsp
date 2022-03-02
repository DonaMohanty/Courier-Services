<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<center>  <h1> ABC COURIER SERVICES</h1> </center> 
<style>

   #div1 {
   text-align:left;
   font-weight:bold; 
   }

table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  margin-top: 10px;
}
th, td {
  padding: 15px;

</style>
</head>
<div id="div1">Welcome</div>
<hr></hr>
<body>
<%
	if (session.getAttribute("username") == null) {
		response.sendRedirect("./login");
	}
	response.setHeader("cache-control", "no-cache ,no-store,must-revalidate");
	%>
<style>
   #div3  {
   margin-top:-23px; 
   margin-left:90px; 
   }

</style>
<div id="div2"><button type="submit" value="addOrder"><a href = "./add">Add Order</a></button></div>
<div id="div3"><button ><a href ="logout">Logout</a></button></div>
<div style="color: red">${msg}</div>
<table style="width:100%">
  <tr>
    <th>Order ID</th>
    <th>Order Date</th> 
     <th>Sender State</th>
    <th>Recipient State</th>
     <th>Order Status</th>
    <th>Weight(in kgs)</th>
    <th>Cost(@ Rs 10/kg)</th>
    <th>Update Order</th>    
</tr>
<c:forEach var="courier" items="${listCourier}">
 <tr>
    <td>${courier.orderno} </td>
    <td>${courier.orderdate} </td>
    <td>${courier.senderstate} </td>
    <td>${courier.recieverstate} </td>
    <td>${courier.status} </td>
    <td>${courier.weight} </td>
    <td>${courier.cost} </td>
    <td><button style="background-color: #13afed;color: white;padding: 10px" type="button" ><a href="update/<c:out value='${courier.orderno}'/>">Update</a></button></td>
  </tr>
    </c:forEach> 
  </table>
</body>
</html>