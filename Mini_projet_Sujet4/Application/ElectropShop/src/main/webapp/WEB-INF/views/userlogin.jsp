<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<%@include file="components/Common-css-js.jsp"%>
</head>
<body>


	<%@include file="components/menu.jsp"%>
	
	
	
	<div class="container-fluid">
		<div class="row mt-5">
			<div class="col-md-4 offset-md-4">
				
						

						<form action="userlogin1">
							<div class="card border-dark  mb-5" style="max-width: 100rem;">
							  <div class="card-header"> <h3> <p class="text-center"> Connexion </p> </h3> </div>
							  <div class="card-body">
							   
							   <table class="table table-responsive">

											<tr>
												<td>Login</td>
												<td><input type="text" name="name"></td>
											</tr>
											<tr>
												<td>Mot de passe </td>
												<td><input type="password" name="pass"></td>
											</tr>
											<tr>
											  
												<td><button class="btn btn-dark" type="submit" >Se connecter</button></td>
											</tr>
										</table>
									</div>
								</div>
							
						</form>
					</div>
				</div>
			</div>
		
</body>
</html>