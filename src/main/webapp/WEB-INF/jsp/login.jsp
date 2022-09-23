<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link href="<c:url value="/css/login.css" />" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>
  <body class="text-center">
    <main class="form-signin">
        <form action="login.html" method="post" >
            <img class="mb-4" src="https://old-freec2-production.s3.amazonaws.com/carrierwave/images/image_upload/317725/medium_funixfulllogooriginal.png" alt="" width="72" height="57">
            <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

            <div class="form-floating">
            <input type="text" class="form-control" id="floatingInput" name="username" value="${param.username}" required/>
            <label for="floatingInput">Username</label>
            </div>
            <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword" name="password" value="${param.password}" required/>
            <label for="floatingPassword">Password</label>
            </div>
			<c:if test="${error != ''}">
				<p class="alert alert-danger">${error}	</p>
			</c:if>
            <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
           	<button  class="w-100 mt-1 btn btn-lg btn-secondary" type="reset">Reset</button>
              <!-- Register buttons -->
			  <div class="text-center">
			    <p>Do not have an account? <a href="jsp/register.jsp">Register</a></p>
			    <p>or sign up with:</p>
			    <button type="button" class="btn btn-link btn-floating mx-1">
			      <i class="fab fa-facebook-f"></i>
			    </button>
			
			    <button type="button" class="btn btn-link btn-floating mx-1">
			      <i class="fab fa-google"></i>
			    </button>
			
			    <button type="button" class="btn btn-link btn-floating mx-1">
			      <i class="fab fa-twitter"></i>
			    </button>
			
			    <button type="button" class="btn btn-link btn-floating mx-1">
			      <i class="fab fa-github"></i>
			    </button>
			  </div>

            <p class="mt-5 mb-3 text-muted">&copy; Huy's Project</p>
        </form>
    </main>
  </body>
</html>