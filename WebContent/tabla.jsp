<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="empresa" class="dao.EmpresaDAO"></jsp:useBean>
<jsp:useBean id="producto" class="dao.ProductoDAO"></jsp:useBean>
<header>
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
	 
		<div class="container ">
		<div class="row ">
		 <table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">Nombre</th>
      <th scope="col">Descripcion</th>
      <th scope="col">Precio</th>
      <th scope="col">idCategoria</th>
      <th scope="col">imagen</th>
    </tr>
  </thead>
  <tbody>
   
					<c:forEach var="producto"  items="${producto.findAll()}">

						<tr>
							<td> <c:out value="${producto.nombre}" /> </td>
							<td><c:out value="${producto.descripcion}" /></td>
						       	<td><c:out value="${producto.precio}" /> </td>
						     <td> <c:out value="${producto.idCategoria}" /> </td>
							 <td><c:out value="${producto.imagen}" /> </td>
						
						</tr>
					</c:forEach>
  </tbody>
</table>
		
		</div>
		
		
		</div>
		<%@include file="html/_footer.html"%>
		
</body>
</html>