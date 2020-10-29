<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<title>HAMASHÌAJ</title>

</head>
<body>
	<jsp:useBean id="empresa" class="dao.EmpresaDAO"></jsp:useBean>

	<%@include file="html/_menu_administrador.html"%>

	<div class="container">


		<div class="row">
			<aside class="col-md-3"></aside>





			<div class="col-md-9">
				<form
					action="${pageContext.request.contextPath}/EmpresaController?action=actualizar"
					method="POST">
					<h1 class="text-center">Gestion de información de la empresa</h1>
					<div class="form-group row">
						<label for="" class="col-2 col-form-label">Nombre:</label> <input
							type="text" class="form-control col-10"
							value="${empresa.getDatos().getNombre()}" name="nombre" /> </input>




					</div>





					<div class="form-group row">
						<label for="" class="col-2 col-form-label">telefono:</label> <input
							type="text" class="form-control col-10"
							value="${empresa.getDatos().getTelefono()}" name="telefono">




					</div>


					
					
					
					<div class="form-group row">
						<label for="" class="col-2 col-form-label">Email:</label> <input
							type="email" class="form-control col-10"
							value="${empresa.getDatos().getEmail()}" name="email">




					</div>
					
					<div class="form-group row">
						<label for="" class="col-2 col-form-label">Informacion:</label> <textarea  rows="8" cols="8"class="form-control col-6 " name="informacion" >
						
${empresa.getDatos().getInformacion()}

</textarea>

					</div>
					


					<div class="container">
						<button type="submit" class="btn btn-primary">Guardar</button>
					</div>



				</form>





			</div>





		</div>



	</div>







	<%@include file="html/_footer.html"%>


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