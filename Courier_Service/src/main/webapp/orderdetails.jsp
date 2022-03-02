<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<h2>Order Details</h2>
<style>

#div1 {
margin-right:20px;  
float: right;
margin-top:-25px; 
}

#div2 {
	margin-right:25px;  
	font-weight: bold;
}

#div3 {
	text-align: center;
	margin-bottom: 20px;
	font-weight: bold;
}


#table1 {
	border-collapse: separate;
	border-spacing: 5px;
}

#table2 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -125px;
	margin-right: 125px;
}

#table3 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -100px;
	margin-right: 125px;	
}

#table4 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -70px;
	margin-right: 125px;
}

#table5 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -40px;
	margin-right: 125px;
}

#table6 {
	border-collapse: separate;
	border-spacing: 5px;
}

#table7 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -130px;
	margin-right: 125px;	
}

#table8 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -100px;
	margin-right: 125px;	
}

#table9 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -70px;
	margin-right: 125px;	
}

#table10 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -40px;
	margin-right: 125px;	
}

#table11 {
	border-collapse: separate;
	border-spacing: 5px;

</style>
</head>
<div id="div1"><a href="../home">Home</a></div>
<hr></hr>
<body>
<c:forEach var="courier" items="${listCourier}">
<div style="border: 1px solid black; padding: 15px; font-size: 17px">
<div id="div2">Order Number : ${courier.orderno}</div>
</div>
<br>

<form>
<div style="border: 1px solid black; padding: 20px; font-size: 20px">
		<div id="div3">Sender Details</div>
    
		<table id="table1">
			<tr>
				<th><label for="firstname">First Name:  ${courier.senderfirstname}</label></th>
			</tr>

			
				<tr>
					<th><label for="lastname">Last Name: ${courier.senderlastname}</label> </th>
				</tr>

			
					<tr>
						<th><label for="Age">Age: ${courier.senderage}</label> </th>
					</tr>

					
						<tr>
							<th><label for="Address">Address: ${courier.senderaddress}</label></th>
						</tr></table>

						<table style="float: right" id="table2">
							<tr>
								<th><label for="City">City: ${courier.sendercity}</label></th>
							</tr></table>

							<table style="float: right" id="table3">
								<tr>
									<th><label for="state">State: ${courier.senderstate}</label></th>
							</tr></table>
																									
								<table style="float: right" id="table4">
								<tr>
								<th><label for="Mobile">Mobile: ${courier.sendermobile}</label></th>
				</tr></table>
				
				<table style="float: right" id="table5">
				<tr>
				<th><label for="Zip Code">Zip Code: ${courier.senderzip}</label></th>
				</tr></table>
								
</div> 	
<br>

<div style="border:1px solid black;padding:20px;font-size:20px">
<div id="div3">Recipent Details</div>

 <table id="table6">
			<tr>
			<th><label for="firstname1">First Name: ${courier.recieverfirstname}</label></th>
				</tr>
				
		  
			<tr>	
			<th><label for="lastname1">Last Name: ${courier.recieverlastname}</label></th>
				</tr> 	
				
		
			<tr>
			<th><label for="Age1">Age: ${courier.recieverage}</label></th>
				</tr> 
		
			<tr>
			<th><label for="Address1">Address: ${courier.recieveraddress}</label></th>
				</tr></table>
			
			<table style="float: right" id="table7">
			<tr>
			<th><label for="City1">City: ${courier.recievercity}</label></th>
				</tr></table> 	
			
			<table style="float: right" id="table8">
			<tr>
			<th><label for="state1">State: ${courier.recieverstate}</label></th>
				</tr></table>				
	
	     <table style="float: right" id="table9">
			<tr>
			<th><label for="Mobile1">Mobile: ${courier.recievermobile}</label></th>
				</tr></table>
	
        <table style="float: right" id="table10">
			<tr>
			<th><label for="Zip Code1">Zip Code: ${courier.recieverzip}</label></th>
				</tr></table>

</div>

<br>
<div style="border:1px solid black;padding:20px;font-size:20px">

<table id="table11">
			<tr>
			<th><label for="firstname1">Weight: ${courier.weight}</label></th>
				</tr>
				
		  
			<tr>	
			<th><label for="lastname1">Status: ${courier.status}</label></th>
				</tr> 	
				
		
			<tr>
			<th><label for="Age1">Order Date: ${courier.orderdate}</label></th>
				</tr></table>
		
 <table style="float: right" id="table9">
			<tr>
			<th><label for="Mobile1">Cost: ${courier.cost}</label></th>
				</tr></table>
	
        <table style="float: right" id="table10">
			<tr>
			<th><label for="Zip Code1">Delivered On: ${courier.deliverdon}</label></th>
				</tr></table>
</div>
</form>
</c:forEach>
</body>
</html>