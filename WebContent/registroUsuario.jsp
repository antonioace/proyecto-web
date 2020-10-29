<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
    <title>HAMASHÌAJ</title>
</head>
<body>
 <jsp:useBean id="empresa" class="dao.EmpresaDAO"></jsp:useBean>
  <header>
       
				<%@include file="html/_menu.html"%>

			
    </header>

    <div class="container">


        <div class="row">







            <div class="col-md-12">
                <form action="${pageContext.request.contextPath}/UsuarioController?action=insertar" method="POST" >
                    <h1 class="text-center"> <b>Registro de usuario</b> </h1>
                    <div class="form-group row">
                        <label for="" class="col-2 col-form-label">Nombre:</label>
                        <input type="text" class="form-control col-6" name="nombre" >




                    </div>


                    <div class="form-group row">
                        <label for="" class="col-2 col-form-label">Apellido:</label>
                        <input type="text" class="form-control col-6" name="apellido">





                    </div>


                    <div class="form-group row">
                        <label for="" class="col-2 col-form-label">Correo:</label>
                        <input type="email" class="form-control col-6" name="correo">




                    </div>



                    <div class="form-group row">
                        <label for="" class="col-2 col-form-label">cedula:</label>
                        <input type="text" class="form-control col-6" name="cedula">




                    </div>

                    <div class="form-group row">
                        <label for="" class="col-2 col-form-label">Telefono:</label>
                        <input type="tel" class="form-control col-6" name="telefono">




                    </div>

                    <div class="form-group row">
                        <label for="" class="col-2 col-form-label">Contraseña:</label>
                        <input type="password" class="form-control col-6" name="contraseña">


                    </div>


                    <div class="container">
                        <button class="btn btn-primary" submit="type ">Registrar</button >
                    </div>
    


                </form>


               


            </div>





        </div>



    </div>








    <%@include file="html/_footer.html" %>



    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
</body>
</html>