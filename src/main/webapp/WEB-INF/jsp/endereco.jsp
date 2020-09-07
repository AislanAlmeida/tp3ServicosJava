<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TP3 - Serviços Nuvem Java - Aislan Almeida</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	
	<c:import url="/WEB-INF/jsp/header.jsp"/>
	
	<div class="container">
		<div class="jumbotron">		
			<h3>API externa 1 - Consulta CEP</h3>
			<p>Serviço que utiliza uma api externa para consultar os dados de um CEP, inserido pelo usuário.</p>
			<form action="/endereco" method="post" class="form-inline">
			  <div class="form-group mx-sm-3 mb-2">
			    <input type="text" class="form-control" id="cepInput" name="cep" placeholder="Digite o CEP" value="${endereco.cep }">
			  </div>
		    	<button type="submit" class="btn btn-primary mb-2">Consultar</button>
	  		</form>
		</div>
		  
		  <hr>

		  <div class="row">
		  	<div class="col-md-6">
	  		  <div class="form-group">
			    <label for="logradouro">Localidade:</label>
			    <input type="text" class="form-control" id="localidade" name="localidade" value="${endereco.localidade}">
			  </div>		  	
		  	</div>
		  	<div class="col-md-6">
	   		  <div class="form-group">
			    <label for="logradouro">UF:</label>
			    <input type="text" class="form-control" id="uf" name="uf" value="${endereco.uf}">
			  </div>
		  	</div>
		  </div>
		  
		  <div class="row">
			  <div class="col-md-6">
		   		  <div class="form-group">
				    <label for="logradouro">Bairro:</label>
				    <input type="text" class="form-control" id="bairro" name="bairro" value="${endereco.bairro}">
				  </div>
			  </div>
	  		  <div class="col-md-6">
		  		  <div class="form-group">
				    <label for="logradouro">Logradouro</label>
				    <input type="text" class="form-control" id="logradouro" name="logradouro" value="${endereco.logradouro}">
				  </div>
			  </div>
		  </div>


  		  <div class="form-group">
		    <label for="logradouro">Complemento</label>
		    <input type="text" class="form-control" id="complemento" name="complemento" value="${endereco.complemento}">
		  </div>
		  

	</div>
		
	<c:import url="/WEB-INF/jsp/footer.jsp"/>
	
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>