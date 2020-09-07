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
			<h3>API externa 2 - Consulta Estados</h3>
			<p>Serviço que utiliza uma api externa para consultar os estados do país.</p>
		</div>
		  
		  <hr>
			
		  <table class="table table-striped">
		    <thead>
		      <tr>
		        <th>ID ESTADO</th>
		        <th>NOME ESTADO</th>
		        <th>SIGLA ESTADO</th>
		        <th>ID REGIAO</th>
		        <th>NOME REGIAO</th>
   		        <th>SIGLA REGIAO</th>
		        <th></th>
		      </tr>
		    </thead>
		    <tbody>
		  		<c:forEach var="e" items="${listaEstados}">  		  		
			      <tr>
			        <td>${e.id}</td>
			        <td>${e.nome}</td>
			        <td>${e.sigla}</td>
			        <td>${e.regiao.id}</td>
			        <td>${e.regiao.nome}</td>
			        <td>${e.regiao.sigla}</td>
			        <td><a href="/estados/${e.id}/municipios">Municipios</a></td>
			      </tr>
				</c:forEach>
		    </tbody>
		  </table>
	</div>
		
	<c:import url="/WEB-INF/jsp/footer.jsp"/>
	
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>