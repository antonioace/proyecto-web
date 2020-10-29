<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
	
	<section id="detalles" class="container mb-5">
    <section class="row justify-content-center h-100">
      <h1 class="detaPro"><b>Detalles del Producto</b> </h1>
    </section>
    <section class="container">
      <section class="row">
        <section id="otro_banner" class="banner2 col-0">
          <ul class="nav flex-column" style="background-color: rgba(255, 255, 255, 0.5);">
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">Todas la categorias</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">Hamburguesa</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">Sandiwch</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">Picada</a>
            </li>
          </ul>
        </section>
        <section class="col ml-5">
          <div class="">
            <img id="img-detalle" src="${pro.imagen}"class="img-thumbnail" alt="">
          </div>
        </section>
        <section class="col">
        
        
        
        
          
          
          
          <h3> <b> </b> <b> <c:out value="${pro.nombre}"  /></b> </h3>  
          <h4 class="mt-4">Precio:</h4>      <b> <c:out value="${pro.precio }"  /></b>
          <h6 class="mt-5">Descripcion Corta:</h6>  <b> <c:out value="${pro.descripcion }"  /></b>
        </section>

      </section>
      <section class="row">
        <div class="col mt-4 ml-5">
          <h6>Descripcion Larga:</h6>
              <b> <c:out value="${pro.descripcionGrande }"  /></b>
        </div>

      </section>
    </section>

  </section>
	
</body>
</html>