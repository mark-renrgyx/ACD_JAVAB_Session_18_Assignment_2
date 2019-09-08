<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!--  For Assignment 18-2 -->
<html>
<head>
<meta charset="UTF-8">
<title>Movie Tickets</title>
</head>
<body>
	<p>Provide your name and age so we can get you some tickets</p>
	<form action="index.jsp">
		Name: <input type="text" name="name" value=""> <br />
		Age: <input type="text" name="age" value=""> <br />
		<input type="submit" value="Submit">
	</form>
	<br />
	<%
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		if (name == null && age == null) { // page was just loaded
		} else if (name.length() == 0 || age.length() == 0) {
			// a field is blank
	%>
		<p class="error">Please provide both name and age</p>
	<%
		} else {
			int ageValue = Integer.valueOf(age);
	%>
			<p class="announcement">Your name is <%=name%>.</p>
			<p class="announcement">Your age is <%=age%>.</p>
	
	<%
			String ticketMessage = "";
			if (ageValue > 65)
				ticketMessage += "Your ticket is $7.00";
			else if (ageValue < 10)
				ticketMessage += "Your ticket is $5.00";
			else 
				ticketMessage += "Your ticket is $9.50";
			%> 
			<p><%= ticketMessage %></p>
			<%
		}
	%>
	
</body>
</html>