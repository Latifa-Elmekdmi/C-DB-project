<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>registration</title>
<%@include file="components/Common-css-js.jsp" %>
</head>
<body>
	<%@include file="components/menu.jsp" %>
	<form action="userlogin" method="post">
		
		<div class="container">
		<div class="jumbotron text-xs-center">
			<h1 class="display-3">ERREUR!</h1>
			<p class="lead">
				<strong>
					&nbsp;Votre  username ou votre password est incorrect </strong> 
			</p>
			<hr>

			<tr>
					<td><input type="submit" value="Continue to login"></td>
				</tr>
		</div>
	</div>
	
	</form>
	

</body>
</html>