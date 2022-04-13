<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>
		<u><i>Person Management</i></u>
	</h1>
	<h2>
		<a href="addperson"><i>Add new person</i></a>
	</h2>
	<table border="1">
		<tr>
			<th width="30">Id</th>
			<th width="140">Name</th>
			<th width="30">Age</th>
			<th width="100">Contact No.</th>
			<th width="120">Action</th>
		</tr>
		<c:forEach var="person" items="${personlist}">
			<tr>
				<td>${person.personId}</td>
				<td>${person.personName}</td>
				<td>${person.personAge}</td>
				<td>${person.contactNo}</td>
				<td><a href="editperson?personId=${person.personId}"> Edit
				</a>&nbsp;&nbsp;&nbsp;&nbsp; <a
					href="deleteperson?personId=${person.personId}"> Delete </a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>