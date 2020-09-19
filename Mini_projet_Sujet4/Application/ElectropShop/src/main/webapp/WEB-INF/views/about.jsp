<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<!DOCTYPE html>
<html>
<head>
<title>ElectroShop</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/style.css">
	<%@include file="components/Common-css-js.jsp" %>
</head>

<body>
	
	

	<%@include file="components/menu.jsp" %>
	
	  <div class="container-fluid">
	
	<div class="cadre">

	
	<div class="row justify-content-center">
	
	<div class="card bg-light mb-3" style="max-width: 60rem;">
  <div class="card-header"><h3> <p class="text-center">  What is ElectroShop ? </p> </h3></div>
  <div class="card-body">
   
    <p class="card-text">
    <h6> ElectroShop est une boutique en ligne de matériel electronique
     qui permet aux visiteurs de commander
      et de payer des produits en toute sécurité .
      </h6> </p>
   
    
    
  </div>
</div>
</div>

<div class="row justify-content-center">
	
	<div class="card bg-light mb-3" style="max-width: 60rem;">
  <div class="card-header"><h3> <p class="text-center">   How I can shop from ElectroShop ? </p></h3></div>
  <div class="card-body">
   
    <p class="card-text">
    <h6> Il suffit de créer un compte et
       voilà vous pouvez commencer votre shopping  et commander tous 
      ce que vous voulez.          
      </h6> </p>
   
    
    
  </div>
</div>
</div>

	</div>
	
	
	

	
	
	

	</div>
	
	
</body>


	
  
  

</html>
