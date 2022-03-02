<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<center>
	<h1>Add Order</h1>
</center>

<style>
#div1 {
	text-align: center;
	margin-bottom: 20px;
	font-weight: bold;
}

#div2 {
	margin-top: 15px;
	margin-left: 600px;
}

#div3 {
	margin-top: -21px;
	margin-left: 700px;
}

#table1 {
	border-collapse: separate;
	border-spacing: 5px;
}

#table2 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -140px;
}

#table3 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -110px;
}

#table4 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -80px;
}

#table5 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -50px;
}

#table6 {
	border-collapse: separate;
	border-spacing: 5px;
}

#table7 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -130px;
}

#table8 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -100px;
}

#table9 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -70px;
}

#table10 {
	border-collapse: separate;
	border-spacing: 5px;
	margin-top: -40px;
}
</style>
</head>
<body>
<div style="color: red">${msg}</div>
<form action="neworder" method="post">
	<div style="border: 1px solid black; padding: 20px; font-size: 20px">
		<div id="div1">Sender Details</div>
		
			<table id="table1">
				<tr>
					<th><label for="firstname">First Name: </label> <input
						type="text" id="senderFirstName" placeholder="First Name"
						name="senderfirstname" size="15"/></th>
						<th><div id="show_senderFirstName"></div></th>
				</tr>


				<tr>
					<th><label for="lastname">Last Name: </label> <input
						type="text" id="senderLastName" placeholder="Last Name"
						name="senderlastname" size="15" /></th>
						<th><div id="show_senderLastName"></div></th>
				</tr>


				<tr>
					<th><label for="Age">Age: </label> <input type="number"
						id="senderage" placeholder="Enter your age" name="senderage" size="15"
						 /></th>
						<th><div id="show_senderage"></div></th>
				</tr>


				<tr>
					<th><label for="Address">Address: </label> <input type="text"
						id="senderAddress" placeholder="Address" name="senderaddress"
						size="15" />
						<th><div id="show_senderAddress"></div></th>
				</tr>
			</table>

			<table style="float: right" id="table2">
				<tr>
					<th><label for="City">City: </label> <input type="text"
						id="senderCity" placeholder="City" name="sendercity" size="15"
						 /></th>
						<th><div id="show_senderCity"></div></th>
				</tr>
			</table>

			<table style="float: right" id="table3">
				<tr>
					<th><label for="state">State:</label> <select
						name="senderstate" id="senderState">
							<option value="Andhra Pradesh">Andhra Pradesh</option>
							<option value="Arunachal Pradesh">Arunachal Pradesh</option>
							<option value="Assam">Assam</option>
							<option value="Bihar">Bihar</option>
							<option value="Chhattisgarh">Chhattisgarh</option>
							<option value="Goa">Goa</option>
							<option value="Gujarat">Gujarat</option>
							<option value="Haryana">Haryana</option>
							<option value="Himachal Pradesh">Himachal Pradesh</option>
							<option value="Jammu & Kashmir">Jammu & Kashmir</option>
							<option value="Jharkhand">Jharkhand</option>
							<option value="Karnataka">Karnataka</option>
							<option value="Kerala">Kerala</option>
							<option value="Madhya Pradesh">Madhya Pradesh</option>
							<option value="Maharashtra">Maharashtra</option>
							<option value="Manipur">Manipur</option>
							<option value="Meghalaya">Meghalaya</option>
							<option value="Mizoram">Mizoram</option>
							<option value="Meghalaya">Meghalaya</option>
							<option value="Nagaland">Nagaland</option>
							<option value="Odisha">Odisha</option>
							<option value="Punjab">Punjab</option>
							<option value="Rajasthan">Rajasthan</option>
							<option value="Sikkim">Sikkim</option>
							<option value="Tamil Nadu">Tamil Nadu</option>
							<option value="Telangana">Telangana</option>
							<option value="Tripura">Tripura</option>
							<option value="Uttarakhand">Uttarakhand</option>
							<option value="Uttar Pradesh">Uttar Pradesh</option>
							<option value="West Bengal">West Bengal</option>
					</select></th>
				</tr>
			</table>

			<table style="float: right" id="table4">
				<tr>
					<th><label for="Mobile">Mobile: </label> <input type="number"
						id="senderContact" placeholder="Mobile Number" name="sendermobile"
						size="15" /></th>
						<th><div id="show_senderContact"></div></th>
				</tr>
			</table>

			<table style="float: right" id="table5">
				<tr>
					<th><label for="Zip Code">Zip Code: </label> <input
						type="number" id="senderZipCode" placeholder="Zip Code"
						name="senderzip" size="15" /></th>
						<th><div id="show_senderZipCode"></div></th>
				</tr>
			</table>
	</div>
	<br>
	<div style="border: 1px solid black; padding: 20px; font-size: 20px">

		<div id="div1">Receiver Details</div>
		<table id="table6">
			<tr>
				<th><label for="firstname1">First Name: </label> <input
					type="text" id="recipientFirstName" placeholder="First Name"
					name="recieverfirstname" size="15" /></th>
					<th><div id="show_recipientFirstName"></div></th>
			</tr>


			<tr>
				<th><label for="lastname1">Last Name: </label> <input
					type="text" id="recipientLastName" placeholder="Last Name"
					name="recieverlastname" size="15" /></th>
					<th><div id="show_recipientLastName"></div></th>
			</tr>


			<tr>
				<th><label for="Age1">Age: </label> <input type="number"
					id="recipientAge" placeholder="Enter your age" name="recieverage"
					size="15" /></th>
					<th><div id="show_recipientAge"></div></th>
			</tr>

			<tr>
				<th><label for="Address1">Address: </label> <input type="text"
					id="recipientAddress" placeholder="Address" name="recieveraddress"
					size="15" /></th>
					<th><div id="show_recipientAddress"></div></th>
			</tr>
		</table>

		<table style="float: right" id="table7">
			<tr>
				<th><label for="City1">City: </label> <input type="text"
					id="recipientCity" placeholder="City" name="recievercity" size="15"
					/></th>
					<th><div id="show_recipientCity"></div></th>
			</tr>
		</table>

		<table style="float: right" id="table8">
			<tr>
				<th><label for="state1">State:</label> <select name="recieverstate"
					id="recipientState">
						<option value="Andhra Pradesh">Andhra Pradesh</option>
						<option value="Arunachal Pradesh">Arunachal Pradesh</option>
						<option value="Assam">Assam</option>
						<option value="Bihar">Bihar</option>
						<option value="Chhattisgarh">Chhattisgarh</option>
						<option value="Goa">Goa</option>
						<option value="Gujarat">Gujarat</option>
						<option value="Haryana">Haryana</option>
						<option value="Himachal Pradesh">Himachal Pradesh</option>
						<option value="Jammu & Kashmir">Jammu & Kashmir</option>
						<option value="Jharkhand">Jharkhand</option>
						<option value="Karnataka">Karnataka</option>
						<option value="Kerala">Kerala</option>
						<option value="Madhya Pradesh">Madhya Pradesh</option>
						<option value="Maharashtra">Maharashtra</option>
						<option value="Manipur">Manipur</option>
						<option value="Meghalaya">Meghalaya</option>
						<option value="Mizoram">Mizoram</option>
						<option value="Meghalaya">Meghalaya</option>
						<option value="Nagaland">Nagaland</option>
						<option value="Odisha">Odisha</option>
						<option value="Punjab">Punjab</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Sikkim">Sikkim</option>
						<option value="Tamil Nadu">Tamil Nadu</option>
						<option value="Telangana">Telangana</option>
						<option value="Tripura">Tripura</option>
						<option value="Uttarakhand">Uttarakhand</option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						<option value="West Bengal">West Bengal</option>
				</select></th>
			</tr>
		</table>

		<table style="float: right" id="table9">
			<tr>
				<th><label for="Mobile1">Mobile: </label> <input type="number"
					id="recipientContact" placeholder="Mobile Number" name="recievermobile"
					size="15" /></th>
					<th><div id="show_recipientContact"></div></th>
			</tr>
		</table>

		<table style="float: right" id="table10">
			<tr>
				<th><label for="Zip Code1">Zip Code: </label> <input
					type="number" id="recipientZipCode" placeholder="Zip Code"
					name="recieverzip" size="15" /></th>
					<th><div id="show_recipientZipCode"></div></th>
			</tr>
		</table>
	</div>

	<br>
	<div style="border: 1px solid black; padding: 20px; font-size: 20px">
		<center>
			<label for="Order Date">
				<tr>
					<td>Order Date:
				</tr>
				</td>
			</label> <input type="date" id="orderDate" name="orderdate"
				placeholder="dd/mm/yyyy" />
				<div id="show_orderDate"></div>
		</center>

		<center>
			<label for="Weight">
				<tr>
					<td>Weight:
				</tr>
				</td>
			</label> <input type="number" id="weight" name="weight"
				placeholder="weight in kg" />
				<div id="show_weight"></div>
		</center>

		<center>
			<label for="cost">
				<tr>
					<td>Cost:</td>
				</tr>
			</label> <input type="number" id="cost" name="cost" placeholder="0.00" />
		<div id="show_cost"></div>
		</center>
</div>

		<div id="div2">
			<button type="submit" id="submit" value=”placeOrder”>Place Order</button>
		</div>
		<div id="div3">
			<button type="submit" value=”cancel”>Cancel</button>
		</div>
		<br><br>
		</form>
</body>
<script>
$(document).ready(function(){
	$('#submit').click(function(){
		var senderFirstName = $('#senderFirstName').val();
		var senderLastName = $('#senderLastName').val();
		var senderage = $('#senderage').val();
		var senderAddress = $('#senderAddress').val();
		var senderCity = $('#senderCity').val();
		var senderContact = $('#senderContact').val();
		intRegex = /^\d{10}$/;
		var senderZipCode = $('#senderZipCode').val();
		var recipientFirstName = $('#recipientFirstName').val();
		var recipientLastName = $('#recipientLastName').val();
		var recipientAge = $('#recipientAge').val();
		var recipientAddress = $('#recipientAddress').val();
		var recipientCity = $('#recipientCity').val();
		var recipientContact = $('#recipientContact').val();
		var recipientZipCode = $('#recipientZipCode').val();
		var orderDate = $('#orderDate').val();
		var weight = $('#weight').val();
		var cost = $('#cost').val();
		if(senderFirstName == ""){
			$('#show_senderFirstName').html('Sender First Name must be filled.');
			$('#show_senderFirstName').css('color','red');
			return false;
		}else if(senderLastName == ""){
			$('#show_senderLastName').html('Sender Last Name must be filled.');
			$('#show_senderLastName').css('color','red');
			return false;
		}else if(senderage == ""){
			$('#show_senderage').html('Sender Age must be filled.');
			$('#show_senderage').css('color','red');
			return false;
		}else if(senderAddress == ""){
			$('#show_senderAddress').html('Sender Address must be filled.');
			$('#show_senderAddress').css('color','red');
			return false;
		}else if(senderCity == ""){
			$('#show_senderCity').html('Sender City must be filled.');
			$('#show_senderCity').css('color','red');
			return false;
		}else if(senderContact == ""){
			$('#show_senderContact').html('Sender Contact must be filled.');
			$('#show_senderContact').css('color','red');
			return false;
		}else if(senderZipCode == ""){
			$('#show_senderZipCode').html('Sender Zip Code must be filled.');
			$('#show_senderZipCode').css('color','red');
			return false;
		}else if(recipientFirstName == ""){
			$('#show_recipientFirstName').html('Recipient First Name must be filled.');
			$('#show_recipientFirstName').css('color','red');
			return false;
		}else if(recipientLastName == ""){
			$('#show_recipientLastName').html('Recipient Last Name must be filled.');
			$('#show_recipientLastName').css('color','red');
			return false;
		}else if(recipientAge == ""){
			$('#show_recipientAge').html('Recipient Age must be filled.');
			$('#show_recipientAge').css('color','red');
			return false;
		}else if(recipientAddress == ""){
			$('#show_recipientAddress').html('Recipient Address must be filled.');
			$('#show_recipientAddress').css('color','red');
			return false;
		}else if(recipientCity == ""){
			$('#show_recipientCity').html('Recipient City must be filled.');
			$('#show_recipientCity').css('color','red');
			return false;
		}else if(recipientContact == ""){
			$('#show_recipientContact').html('Recipient Contact must be filled.');
			$('#show_recipientContact').css('color','red');
			return false;
		}else if(recipientZipCode == ""){
			$('#show_recipientZipCode').html('Recipient Zip Code must be filled.');
			$('#show_recipientZipCode').css('color','red');
			return false;
		}else if(orderDate == ""){
			$('#show_orderDate').html('Order Date must be filled.');
			$('#show_orderDate').css('color','red');
			return false;
		}else if(weight == ""){
			$('#show_weight').html('weight must be filled.');
			$('#show_weight').css('color','red');
			return false;
		}else if(cost == ""){
			$('#show_cost').html('Cost must be filled.');
			$('#show_cost').css('color','red');
			return false;
		}else if(recipientFirstName.length < 3){
			$('#show_recipientFirstName').html('Please enter a name 3 characters or more.');
			$('#show_recipientFirstName').css('color','red');
			return false;
		}else if(senderFirstName.length < 3){
			$('#show_senderFirstName').html('Please enter a name 3 characters or more.');
			$('#show_senderFirstName').css('color','red');
			return false;
		}else if(senderLastName.length < 3){
			$('#show_senderLastName').html('Please enter a name 3 characters or more.');
			$('#show_senderLastName').css('color','red');
			return false;
		}else if(recipientLastName.length < 3){
			$('#show_recipientLastName').html('Please enter a name 3 characters or more.');
			$('#show_recipientLastName').css('color','red');
			return false;
		}else if(senderZipCode.length => 6){
			$('#show_senderZipCode').html('Sender Zip Code must be 6 digit.');
			$('#show_senderZipCode').css('color','red');
			return false;
		}else if(recipientZipCode.length => 6){
			$('#show_recipientZipCode').html('Recipient Zip Code must be 6 digit.');
			$('#show_recipientZipCode').css('color','red');
			return false;
		}else if((!senderContact.value.match(intRegex)){
			$('#show_senderContact').html('Sender Mobile Number must be 10 digit.');
			$('#show_senderContact').css('color','red');
			return false;
		}else if((!recipientContact.value.match(intRegex)){
			$('#show_recipientContact').html('Recipient Mobile Number must be 10 digit.');
			$('#show_recipientContact').css('color','red');
			return false;
		}/*  else if(senderage =>18){
			$('#show_senderage').html('Sender Age must be greater than 18.');
			$('#show_senderage').css('color','red');
			return false;
		}else if(recipientAge => 18){
			$('#show_recipientAge').html('Recipien Age must be greater than 18.');
			$('#show_recipientAge').css('color','red');
			return false;
		} */
		else{
			return true;
		}
		
	})
})
</script>
</html>