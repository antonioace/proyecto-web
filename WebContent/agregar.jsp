<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/estilo.css">
  <script type="text/jscript" src="script.js"></script>
  <title>HAMASHÌAJ</title>
</head>

<body>
<jsp:useBean id="empresa" class="dao.EmpresaDAO"></jsp:useBean>
  <header>
    <!--- --->
    <c:choose>
			<c:when test="${admin!=null}">
				<%@include file="html/_menu_administrador.html"%>
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
    <section id="Comida" class="container">
      <section id="otro_banner" class="banner2 mt-5">
        <h1 id="menu-registro-Producto"><b>Menu</b></h1>
        <ul class="nav flex-column category_item" style="background-color: rgba(255, 255, 255, 0.5);">
          <di class="category_list">
            <li class="nav-item">
              <a class="nav-link category_item" href="${pageContext.request.contextPath}/index.jsp" category="all">Todas la categorias</a>
            </li>
            <li class="nav-item">
              <a class="nav-link category_item" href="${pageContext.request.contextPath}/index.jsp" category="Hamburguesa">Hamburguesa</a>
            </li>
            <li class="nav-item">
              <a class="nav-link category_item" href="${pageContext.request.contextPath}/index.jsp" category="Sandiwch">Sandiwch</a>
            </li>
            <li class="nav-item">
              <a class="nav-link category_item" href="${pageContext.request.contextPath}/index.jsp" category="picada">Picada</a>
            </li>
          </di>
        </ul>
      </section>
      <div class="row">
          <aside class="col-md-3">
          </aside>
          <div class="col-md-9 offset-1">
              <form action="${pageContext.request.contextPath}/AgregarProducto?accion=agregar&id=${producto.id}"  method="post"><h1 class="text-center offset-2"  method="post"> <b>Actualizar producto</b> </h1>
                  <div class="form-group row">
                      <label for="" class="col-2 col-form-label">Categoria:</label>
                      <input type="text" class="form-control col-10" name="idCategoria"  >
                  </div>
                  <div class="form-group row">
                      <label for="" class="col-2 col-form-label">Nombre:</label>
                      <input type="text" class="form-control col-10" name="nombre"   >
                  </div>
                  <div class="form-group row">
                      <label for="" class="col-2 col-form-label">Precio:</label>
                      <input type="number" class="form-control col-10" name="precio"  ">
                  </div>
                  <div class="form-group row">
                      <label for="" class="col-2 col-form-label">Descripcion Corta: </label>
                      <input type="text" class="form-control col-10" name="descripcion"  >
                  </div>
                  <div class="form-group row">
                      <label for="" class="col-2 col-form-label">Descripcion Larga: </label>
                      <input type="text" class="form-control col-10" name="descripcionGrande" >
                  </div>
                  <div class="form-group row">
                      <label for="" class="col-2 col-form-label">Imagen </label>
                      <input type="text" class="form-control col-10" name="imagen"  >
                  </div>
              
              <div class="container offset-6">
                  <button class="btn btn-primary" type="submit">Guardar</button>
              </div>
              </form>
          </div>
      </div>
  </div>

<%@include file="html/_footer.html"%>
</body>
<script src="https://snapwidget.com/js/snapwidget.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</html>