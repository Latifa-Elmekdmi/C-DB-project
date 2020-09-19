<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<head>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/style.css">
	<%@include file="components/Common-css-js.jsp" %>
	
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

 <div class="container">
  <a class="navbar-brand" href="/electroshop">ElectroShop</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/electroshop"><svg width="1em" height="0.90em" viewBox="0 0 16 16" class="bi bi-shop" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h1v-5a1 1 0 0 1 1-1h3a1 1 0 0 1 1 1v5h6V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zM4 15h3v-5H4v5zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1v-3zm3 0h-2v3h2v-3z"/>
</svg> Accueil <span class="sr-only">(current)</span></a>
      </li>
      
       <li class="nav-item active">
        <a class="nav-link" href="/electroshop/adminCat/saveCat"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-plus-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  <path fill-rule="evenodd" d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
</svg> Ajouter Catégorie <span class="sr-only">(current)</span></a>
      </li>
	      
	  
    </ul>
<ul class="navbar-nav ml-auto">
    	
    	<li class="nav-item active">
        <a class="nav-link" href="/electroshop"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-box-arrow-up" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M3.5 6a.5.5 0 0 0-.5.5v8a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5v-8a.5.5 0 0 0-.5-.5h-2a.5.5 0 0 1 0-1h2A1.5 1.5 0 0 1 14 6.5v8a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 14.5v-8A1.5 1.5 0 0 1 3.5 5h2a.5.5 0 0 1 0 1h-2z"/>
  <path fill-rule="evenodd" d="M7.646.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 1.707V10.5a.5.5 0 0 1-1 0V1.707L5.354 3.854a.5.5 0 1 1-.708-.708l3-3z"/>
</svg> Deconnexion </a>
      </li>
		</ul>
    </div>
 </div>
</nav>
    
 
<div class="cadre">
	<f:form modelAttribute="produit" action="saveProduit"
		enctype="multipart/form-data">
		
		<div class="row justify-content-center">
   
      
      
      
<div class="card bg-light mb-3" style="max-width: 60rem;">
  <div class="card-header"> <h3> <p class="text-center"> L'ajout d'un produit</p> </h3> </div>
  <div class="card-body">
   
   <table class="table table-responsive">
        <tr>
				<td>Id Produit</td>
				<td><f:input type="hidden" path="idProduit" />${produit.idProduit}</td>
				<td><f:errors path="idProduit" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td>Categorie</td>
				<td><f:select path="categorie.idCategorie"
						items="${categories}" itemLabel="nomCategorie"
						itemValue="idCategorie" /></td>
				<td><f:errors path="categorie.idCategorie" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td>Désignation</td>
				<td><f:input path="designation" /></td>
				<td><f:errors path="designation" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><f:input path="description" /></td>
				<td><f:errors path="description" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td>Prix</td>
				<td><f:input path="prix" /></td>
				<td><f:errors path="prix" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td>Sélectioné</td>
				<td><f:checkbox path="selectionne" /></td>
				<td><f:errors path="selectionne" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td>Quantité</td>
				<td><f:input path="quantite" /></td>
				<td><f:errors path="quantite" cssClass="errors"></f:errors></td>
			</tr>
			<tr>
				<td>Photo</td>
				<td><c:if test="${produit.idProduit!=null}">
						<f:input type="hidden" path="photo" />
						<img
							src="photoProduit?idP=${produit.idProduit }">
					</c:if> <input type="file" name="file"></td>
				<td>${errors }</td>
			</tr>
			<tr>
			
				<td>  <button type="submit" class="btn btn-dark">Enregistrer</button></td>
		
        
      </table>
   
  </div>
</div>
      
   
  </div>
		
		
		
	</f:form>
</div>
<div>
	
	
	
	<div id="tabProduit" class="cadre">
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Designation</th>
      <th scope="col">Prix</th>
      <th scope="col">Sélectionnée</th>
      <th scope="col">Catégorie</th>
      <th scope="col">Quantité</th>
      <th scope="col">Photo</th>
      <th scope="col">Operation</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${ produits}" var="p">
			<tr>
				<td>${p.idProduit }</td>
				<td>${p.designation }</td>
				<td>${p.prix}</td>
				<td>${p.selectionne}</td>
				<td>${p.categorie.nomCategorie}</td>
				<td>${p.quantite}</td>
				<td><img src="photoProduit?idP=${p.idProduit}"></td>
				<td><a href="deleteProd?idP=${p.idProduit }"> <button type="button" class="btn btn-danger">Supprimer</button></a></td>
				<td><a href="editProd?idP=${p.idProduit }"><button type="button" class="btn btn-primary">Modifier</button></a></td>
			</tr>
		</c:forEach>
  </tbody>
</table>



</div>

</div>


</body>

