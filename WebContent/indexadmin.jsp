<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/estilo.css">
<title>HAMASHÌAJ</title>
</head>

<body>
<jsp:useBean id="empresa" class="dao.EmpresaDAO"></jsp:useBean>
	<jsp:useBean id="productos" class="dao.ProductoDAO"></jsp:useBean>

	<header>
		
	
		<!---nav--->
		<c:choose>
			<c:when test="${admin!=null}">
				<%@include file="html/_menu_administrador.html"%>>
			</c:when>
			<c:when test="${usuario!=null}">
				<%@include file="html/_menu_usuario.html"%>
			</c:when>
			<c:otherwise>
				<%@include file="html/_menu.html"%>

			</c:otherwise>
		</c:choose>

	</header>
	<div class="container">
		<div class="row">
			<div class="col-md-3 row">

				<section id="Comida" class="row mx-auto">
					<section id="otro_banner" class="banner2 mx-auto">
						<ul class="nav flex-column"
							style="background-color: rgba(255, 255, 255, 0.5);">
							<li class="nav-item"><a class="nav-link" href="#Comida">Todas
									la categorias</a></li>
							<li class="nav-item"><a class="nav-link"
								href="#Hamburguesas">Hamburguesa</a></li>
							<li class="nav-item"><a class="nav-link" href="#Sandiwch">Sandiwch</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#picadas">Picada</a>
							</li>
						</ul>
					</section>

				</section>
			</div>
			<div class="col-md-9 mx-auto">
				<section id="Harburguesas" class="container mb-20">
					<!--Hamburguesas-->
					<div class="container" id="Hamburguesas">

						<div class="row justify-content-center">
							<div class="etiqueta" id="HamburguesaEtiqueta">
								<p>Hamburguesa</p>
							</div>
							<c:forEach var="pro"
								items="${productos.findAllOrderByCategoria1()}">
								<div class="col-sm-4  mt-2" id="Horno ardiente">

									<div class="card">
										<img src="${pro.imagen}" class="card-img-top" alt="">
										<div class="card-body">
											<h5 class="card-title">
												<b> <c:out value="${pro.nombre}" /></b>
											</h5>
											<p class="card-text ">
												PRECIO:
												<c:out value="${pro.precio}" />
												$
											</p>


											<a
												href="${pageContext.request.contextPath}/ProductoController?accion=mostrar&id=${pro.id}"
												class="btn btn-primary">Ver Mas</a> <a
												href="${pageContext.request.contextPath}/EditarProducto?&id=${pro.id}"
												class="btn btn-primary">Editar</a> <a
												href="${pageContext.request.contextPath}/EliminarProducto?&id=${pro.id}"
												class="btn btn-primary">Eliminar</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</section>


				<section id="Sandiwch" class="container">
					<!--Hamburguesas-->
					<div class="container" id="SandiwchOtracosa">
						<div class="etiqueta container">
							<p>Sandiwch</p>
						</div>

						<div class="container" id="sandwich">

							<div class="row justify-content-center">
								<c:forEach var="pro"
									items="${productos.findAllOrderByCategoria2()}">

									<div class="col-sm-4  mt-2" id="Horno ardiente">

										<div class="card">
											<img src="${pro.imagen}" class="card-img-top" alt="">
											<div class="card-body">
												<h5 class="card-title">
													<b> <c:out value="${pro.nombre}" /></b>
												</h5>
												<p class="card-text ">
													PRECIO:
													<c:out value="${pro.precio}" />
													$
												</p>

												<a
												href="${pageContext.request.contextPath}/ProductoController?accion=mostrar&id=${pro.id}"
												class="btn btn-primary">Ver Mas</a>
<a
												href="${pageContext.request.contextPath}/EditarProducto?&id=${pro.id}"
												class="btn btn-primary">Editar</a> <a
												href="${pageContext.request.contextPath}/EliminarProducto?accion=eliminar&id=${pro.id}"
												class="btn btn-primary">Eliminar</a>

											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
				</section>
				<section id="picadas" class="container">
					<!--Hamburguesas-->
					<div class="etiqueta container" id="picadasOtracosa">
						<p>Picada,adiciones</p>
					</div>
					<div class="container" id="">

						<div class="row justify-content-center">
							<c:forEach var="pro"
								items="${productos.findAllOrderByCategoria3()}">

								<div class="col-sm-4  mt-2" id="Horno ardiente">

									<div class="card">
										<img src="${pro.imagen}" class="card-img-top" alt="">
										<div class="card-body">
											<h5 class="card-title">
												<b> <c:out value="${pro.nombre}" /></b>
											</h5>
											<p class="card-text ">
												PRECIO:
												<c:out value="${pro.precio}" />
												$
											</p>


											<a
												href="${pageContext.request.contextPath}/ProductoController?accion=mostrar&id=${pro.id}"
												method="post" class="btn btn-primary">Ver Mas</a>
<a
												href="${pageContext.request.contextPath}/EditarProducto?&id=${pro.id}"
												class="btn btn-primary">Editar</a> <a
												href="${pageContext.request.contextPath}/EliminarProducto?&id=${pro.id}"
												class="btn btn-primary">Eliminar</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</section>

			</div>
		</div>
	</div>





	<%@include file="html/_footer.html"%>
</body>
<script src="https://snapwidget.com/js/snapwidget.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>

</html>