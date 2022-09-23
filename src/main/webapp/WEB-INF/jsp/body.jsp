<%@ page language="java" contentType="text/html; charset = UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3">
        <ul class="nav flex-column">
        
          <li class="nav-item">
            <button class="nav-link tablink" onclick="openPage('Orders', this, 'grey')" id="defaultOpen">
              Orders
            </button>
          </li>
          
          <li class="nav-item">
            <button class="nav-link tablink" onclick="openPage('Accounts', this, 'grey')">
              Accounts
            </button>
          </li>
          
          <li class="nav-item">
            <button class="nav-link tablink" onclick="openPage('Products', this, 'grey')">
              Products
            </button>
          </li>
          
        </ul>
      </div>
    </nav>

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">
        Welcome!${username}<br>
        Dashboard</h1>
      </div>
      
      <div id="Orders" class="tabcontent">
      <h2>Orders</h2>
      <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
      <h2>Orders List</h2>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col">Buyer e-mail</th>
              <th scope="col">Price</th>
              <th scope="col">Order Date</th>
              <th scope="col">Address</th>
            </tr>
          </thead>
          <tbody>
          	<c:forEach var = "ord" items="${orList}">
	            <tr>
	              <td>${ord.userMail}</td>
	              <td>${ord.price}</td>
	              <td>${ord.orderDate}</td>
	              <td>${ord.address}</td>
	            </tr>		
          	</c:forEach>

          </tbody>
        </table>
      </div>
      </div>
      
      <div id="Accounts" class="tabcontent">
      <h2>Account List</h2>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col">User Name</th>
              <th scope="col">Email</th>
              <th scope="col">Role</th>
              <th scope="col">Address</th>
            </tr>
          </thead>
          <tbody>
          	<c:forEach var = "acc" items="${accList}">
	            <tr>
	              <td>${acc.name}</td>
	              <td>${acc.usr}</td>
	              <td>${acc.role}</td>
	              <td>${acc.address}</td>
	            </tr>		
          	</c:forEach>

          </tbody>
        </table>
      </div>
      </div>
      
      
      <div id="Products" class="tabcontent">
      <h2>Products List</h2>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col">Img</th>
              <th scope="col">Product name</th>
              <th scope="col">Price</th>
            </tr>
          </thead>
          <tbody>
          	<c:forEach var = "pr" items="${prList}">
	            <tr>
	              <td><img alt="${pr.name }" src="${pr.src }" class="prImg"></td>
	              <td>${pr.name}</td>
	              <td>$ ${pr.price}</td>
	            </tr>		
          	</c:forEach>

          </tbody>
        </table>
      </div>
      </div>
      
    </main>
  </div>
</div>
</body>
</html>