

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

	<%@include file="components/Common-css-js.jsp" %>
</head>
<body>
<%@include file="components/menu.jsp" %>
          
	
	<div class="container-fluid">
		<div class="row mt-5">
			<div class="col-md-4 offset-md-4">
				
						

						<form action="j_spring_security_check" method="post"">
							<div class="card border-dark  mb-5" style="max-width: 100rem;">
							  <div class="card-header"> <h3> <p class="text-center">Admin Connexion </p> </h3> </div>
							  <div class="card-body">
							   
							   <table class="table table-responsive">

											<tr>
					<td>Login</td>
					<td><input type="text" name="j_username"></td>
				</tr>
				<tr>
					<td>Mot de passe</td>
					<td><input type="password" name="j_password"></td>
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