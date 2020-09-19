<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>



<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/style.css">
	
	
<title>ElectroShop</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"> 

	<%@include file="components/home-css-js.jsp" %>

</head>

<body>


	<%@include file="components/menu.jsp" %>
	
	
	
	<!--Carousel Wrapper-->
<div id="carousel-example-2" class="carousel slide carousel-fade z-depth-1-half" data-ride="carousel">
 
	  <!--/.Indicators-->
	  <!--Slides-->
	  <div class="carousel-inner" role="listbox">
		    <div class="carousel-item active">
		      <div class="view">
		        <img class="d-block w-100" src="<%=request.getContextPath()%>/resources/images/materiel.png" alt="First slide">
		        <div class="mask rgba-black-light"></div>
		      </div>
		      <div class="carousel-caption">
		     
		      </div>
		    </div>
	    
	    </div>
   
</div>
	
	
	
<div class="container">
	
		<div class="row">
		
			<div class="row justify-content-around">  <c:forEach items="${ produits}" var="p">
		        <a class="black-text" href="photoProduit?idP=${p.idProduit}"
		          data-size="1600x1067">
		          <img alt="picture" src="photoProduit?idP=${p.idProduit}"
		            class="img-fluid">
		          <h3 class="text-center my-3">${p.designation}</h3>
		        </a>
		        </c:forEach></div>
		      
		      </div>
	
		</div>

	
</body>



</html>
