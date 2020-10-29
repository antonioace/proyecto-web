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
					action="${pageContext.request.contextPath}/UsuarioController?action=iniciar"
					method="post">
					<h1 class="text-center"><b>Inicio de sesion</b></h1>
					<div class="btn-group btn-group-toggle" data-toggle="buttons">
 
</div>
					<div class="form-group row">
						<label for="" class="col-2 col-form-label">Cedula:</label> <input
							type="text" class="form-control col-6" name="cedula">




					</div>



					<div class="form-group row">
						<label for="" class="col-2 col-form-label">Clave: </label> <input
							type="password" class="form-control col-6" name="contrasenia">





					</div>

				
<c:choose>
     <c:when test="${mensaje!=null}">
       <c:out value="${mensaje}"></c:out>
     </c:when>
     <c:otherwise>
       <c:out value=""></c:out>  
          </c:otherwise>
</c:choose>
				


					<div class="container ml-5">
						<button class="btn btn-primary" type="submit">Inicio
							sesión</button>
							
							<a href="${pageContext.request.contextPath}/registroUsuario.jsp" class="btn btn-primary">Registro</a>
					</div>

				</form>





			</div>





		</div>



	</div>








	<%@include file="html/_footer.html" %>


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>
</body>
</html>