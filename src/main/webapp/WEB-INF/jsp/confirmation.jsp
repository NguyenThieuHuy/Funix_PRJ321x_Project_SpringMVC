<%@ page language="java" contentType="text/html; charset = UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src='<c:url value = "/js/admin.js"/>'></script>
<link href="<c:url value="/css/admin.css" />" rel="stylesheet">

</head>
<body>	
	<jsp:include page = "header.jsp" />
	<jsp:include page = "body.jsp" />
	<jsp:include page = "footer.jsp" />
</body>
</html>