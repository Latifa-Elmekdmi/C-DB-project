<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
	
		
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
     <img class="d-block w-100" src="<%=request.getContextPath()%>/resources/images/promo4.png" alt="First slide">
    
    </div>
    <div class="carousel-item">
       <img class="d-block w-100" src="<%=request.getContextPath()%>/resources/images/promotion.png" alt="Second slide">
    </div>
    <div class="carousel-item">
       <img class="d-block w-100" src="<%=request.getContextPath()%>/resources/images/promo2.png" alt="ThirdFirst slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
 
		
		</div>
	
	</div>

	
	

	
</body>


	
  
  

</html>
