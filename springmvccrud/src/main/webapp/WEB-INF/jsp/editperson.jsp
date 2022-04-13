<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<h1>Edit Person</h1>
	<form action="saveperson?personId=${person.personId}" method="post">
		<table>
			<tr>
				<td>Person Name:</td>
				<td><input type="text" value="${person.personName}"
					name="personName"></td>
			</tr>
			<tr>
				<td>Person Age:</td>
				<td><input type="text" value="${person.personAge}"
					name="personAge"></td>
			</tr>
			<tr>
				<td>Contact No.:</td>
				<td><input type="text" value="${person.contactNo}"
					name="contactNo"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Update"></td>
			</tr>
		</table>
	</form>
</body>
</html>