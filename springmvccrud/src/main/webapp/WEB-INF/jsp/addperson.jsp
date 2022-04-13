<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Person</title>
</head>
<body>
	<h1>Add new person</h1>
	<form action="saveperson" method="post">
		<table>
			<tr>
				<td>Person name</td>
				<td><input type="text" name="personName"
					placeholder="Enter name"></td>
			</tr>
			<tr>
				<td>Person age</td>
				<td><input type="text" name="personAge" placeholder="Enter age"></td>
			</tr>
			<tr>
				<td>Person contact</td>
				<td><input type="text" name="contactNo"
					placeholder="Enter number"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>