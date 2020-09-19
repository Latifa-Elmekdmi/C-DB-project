<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/style.css">
	
	
<title>ElectroShop</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"> 



	<%@include file="components/Common-css-js.jsp" %>

</head>

<body>

	
	<%@include file="components/UserMenu.jsp"%>
	

<div class="container">
	<div class="row">
			
	<div class="row justify-content-around">  

	<c:forEach items="${ produits}" var="p">
	<div class="card" style="width:400px">
	
	  <a class="black-text" href="photoProduit?idP=${p.idProduit}" data-size="1600x1067">
	  <img class="card-img-top" src="photoProduit?idP=${p.idProduit}" alt="Card image">
	  </a>
	  <div class="card-body">
	  <p><a href="photoProduit?idP=${p.idProduit}" class="text-success"><h3 class="text-center my-3">${p.designation}</h3> </a></p>
	    <p><a  class="text-info"><h5 class="text-center my-3">${p.prix} DH</h5></a></p>
	    
	    <h5 class="text-center my-3">${p.description}</h5>
	      
	    </p>
	    
     <tr>
					<td colspan="2">
						<form action="ajouterAuPanier">
							<input type="hidden" value="${p.idProduit}" name="idProduit">
							<input type="text" value="1" name="quantite"> <input
								type="submit" value="Ajouter au panier">
						</form>
					<td>
				</tr>
  </div>
   
	</div>
	</c:forEach>
</div>
</div>
</div>

	
</body>

</html>
