
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html>
    <head>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/style.css">
	<%@include file="components/Common-css-js.jsp" %>
</head>
    <body>
        <%@include file="components/menu.jsp"  %>
        
        
        <div class="container-fluid">
           
           
           
  	<div class="cadre">
	
		<div class="row justify-content-center">
   
      
      
      
<div class="card border-dark  mb-5" style="max-width: 100rem;">
  <div class="card-header"> <h3> <p class="text-center"> Inscription </p> </h3> </div>
  <div class="card-body">
   <form  action="saveUser">
   <table class="table table-responsive">

                
                    
		
				<tr>
					<td >Nom</td>
					<td><input type="text" name="Name"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="Email"></td>
				</tr>
				
				<tr>
					<td>Mobile</td>
					<td><input type="text" name="Mobile"></td>
				</tr>
				
				<tr>
					<td>Adresse</td>
				<td><input type="text" name="adrss" /></td>
				
				</tr>
				<tr>			
				<tr>
					<td >Mot de passe</td>
					<td><input type="password" name="Password"></td>
				</tr>
				
				<tr>
					<td>Confirmer Mot de passe</td>
					<td><input type="password" name="Confirm Password"></td>
				</tr>
				
				<tr>
					<td><button type="submit" class="btn btn-dark">S'inscrire</button></td>
				</tr>
				
			</table>
			</form>
			</div>
				</div>
					</div>
			

	</div>
                    
                    
                
                
                
                
            </div>
          
 </body>
  
</html>
