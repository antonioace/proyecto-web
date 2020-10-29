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
    <section id="Comida" class="container ">
      <section id="otro_banner" class="banner2 mt-5">
        <h1 id="menu-registro-Producto"><b>Menu</b></h1>
        <ul class="nav flex-column category_item" style="background-color: rgba(255, 255, 255, 0.5);">
          <di class="category_list">
            <li class="nav-item">
              <a class="nav-link category_item" href="${pageContext.request.contextPath}/index.jsp"category="all">Todas la categorias</a>
            </li>
            <li class="nav-item">
              <a class="nav-link category_item" href="${pageContext.request.contextPath}/index.jsp" category="Hamburguesa">Hamburguesa</a>
            </li>
            <li class="nav-item">
              <a class="nav-link category_item" href="${pageContext.request.contextPath}/index.jsp" category="Sandiwch">Sandiwch</a>
            </li>
            <li class="nav-item">
              <a class="nav-link category_item" href="${pageContext.request.contextPath}/index.jsp"category="picada">Picada</a>
            </li>
          </di>
        </ul>
      </section>
      <div class="row">
          <aside class="col-md-3">
          </aside>
          <div class="col-md-9 offset-1">
              <form action="${pageContext.request.contextPath}/ActualizarProducto?accion=modificar&id=${producto.id}"  method="post"><h1 class="text-center offset-2"  method="post"> <b>Actualizar producto</b> </h1>
                  <div class="form-group row">
                      <label for="" class="col-2 col-form-label">Categoria:</label>
                      <input type="text" class="form-control col-10" name="idCategoria"  required value="${producto.idCategoria}">
                  </div>
                  <div class="form-group row">
                      <label for="" class="col-2 col-form-label">Nombre:</label>
                      <input type="text" class="form-control col-10" name="nombre"  required  value="${producto.nombre}">
                  </div>
                  <div class="form-group row">
                      <label for="" class="col-2 col-form-label">Precio:</label>
                      <input type="number" class="form-control col-10" name="precio"  required value="${producto.precio}">
                  </div>
                  <div class="form-group row">
                      <label for="" class="col-2 col-form-label">Descripcion Corta: </label>
                      <input type="text" class="form-control col-10" name="descripcion" required  value="${producto.descripcion}">
                  </div>
                  <div class="form-group row">
                      <label for="" class="col-2 col-form-label">Descripcion Larga: </label>
                      <input type="text" class="form-control col-10" name="descripcionGrande" required  value="${producto.descripcionGrande}">
                  </div>
                  <div class="form-group row">
                      <label for="" class="col-2 col-form-label">Imagen </label>
                      <input type="text" class="form-control col-10" name="imagen"  required  value="${producto.imagen}">
                  </div>
              
              <div class="container offset-6">
                  <button class="btn btn-primary" type="submit">Guardar</button>
              </div>
              </form>
          </div>
      </div>
  </div>

  <footer class="footer">
    <section id="bajo">
      <div class="container-fluid foter">
        <div class="row">
          <div class="col">
            <h1 class="page-header">
              Información de contacto
            </h1>
            <p>Email: elpapeme@gmail.com</p>
            <p>Teléfono de contacto: 318 6943404</p>
          </div>
          <div class="col-2">
            <ul class="icon">
              <li> <a href="https://web.facebook.com/COMIDAFAMILIAFE"> <i class="fa fa-facebook"></i> </a> </li>
              <li> <a href=""> <i class="fa fa-twitter"></i> </a> </li>
              <li> <a href="https://www.instagram.com/hamashiaj.food/?hl=es-la"> <i class="fa fa-instagram"></i> </a> </li>
            </ul>
            <div class="contact">
              <a href="https://api.whatsapp.com/send?phone=573186943404&text=Hola%20Elda%20y%20Freddy%20tengo%20inter%C3%A9s%20en%20hacer%20un%20pedido%20a%20domicilio,%20mi%20nombre%20es">
                <button class="btn btn-primary"> Contactanos</button>
              </a>
            </div>
          </div>
          <div class="col-2">
            <img class="w-100" src="../imagenes/logos/HAMASHIAJ4.jpg" alt="">
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <p class="text-center text">
              Copyright y demas
            </p>
          </div>
        </div>
    </section>
  </footer>
</body>
<script src="https://snapwidget.com/js/snapwidget.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</html>