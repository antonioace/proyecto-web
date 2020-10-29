<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<title>HAMASHÌAJ</title>
</head>
<body>
<jsp:useBean id="empresa" class="dao.EmpresaDAO"></jsp:useBean>
	<header>
		<c:choose>
			<c:when test="${admin!=null}">
				<%@include file="html/_menu_administrador.html"%>>
			</c:when>
			<c:when test="${usuario!=null}">
				<%@include file="html/_menu_usuario.html"%>>
			</c:when>
			<c:otherwise>
				<%@include file="html/_menu.html"%>

			</c:otherwise>
		</c:choose>
	</header>

	<div class="container">


		<div class="row">







			<div class="col-md-6 login ">
				<form
					action="${pageContext.request.contextPath}/AdminController"
					method="post">
					<h1 class="text-center">Inicio de sesion</h1>
					<div class="btn-group btn-group-toggle" data-toggle="buttons">
 
</div>
					<div class="form-group row">
						<label for="" class="col-2 col-form-label">Usuario:</label> <input
							type="text" class="form-control col-6" name="usuario">




					</div>



					<div class="form-group row">
						<label for="" class="col-2 col-form-label">Clave: </label> <input
							type="password" class="form-control col-6" name="contrasenia">





					</div>

				

				


					<div class="container">
						<button class="btn btn-primary" type="submit">Inicio
							sesión</button>
					</div>
<div class="container ">
<c:choose>
     <c:when test="${mensaje!=null}">
       <c:out value="${mensaje}"></c:out>
     </c:when>
     <c:otherwise>
       <c:out value=""></c:out>  
          </c:otherwise>
</c:choose>
</div>
				</form>





			</div>





		</div>



	</div>








	<%@include file="html/_footer.html" %>


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>