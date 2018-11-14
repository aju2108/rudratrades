<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Rudra Trading Co | Admin Home</title>
<link rel="stylesheet" href="resources/css/admin-home-style.css">
</head>
<body>
	<nav class="menu" tabindex="0">
	<div class="smartphone-menu-trigger"></div>
	<header class="avatar"> <img src="resources/images/admin.jpg" />
	<h2> Sanjay Yadav </h2>
	</header>
	<ul>
		<li tabindex="0" class="icon-dashboard">
			<span>
				<a href="${pageContext.request.contextPath}/dashboard" style="text-decorations:none; color:inherit;">Dashboard</a>
			</span>
		</li>
		<li tabindex="0" class="icon-newmessage">
			<span>
				<a href="${pageContext.request.contextPath}/renderbill" style="text-decorations:none; color:inherit;">Create Bill</a>
			</span>
		</li>
		<li tabindex="0" class="icon-find">
			<span><a href="/" style="text-decorations:none; color:inherit;">Find Bill</span></li>
		<li tabindex="0" class="icon-adduser">
			<span>
				<a href="/" style="text-decorations:none; color:inherit;">Add User</a>
			</span></li>
		<li tabindex="0" class="icon-users">
			<span>
				<a href="/" style="text-decorations:none; color:inherit;">Add New Customer</a>
			</span>
		</li>
		<li tabindex="0" class="icon-addtolist">
			<span>
				<a href="/" style="text-decorations:none; color:inherit;">Add Product</a>
			</span>
		</li>
		<li tabindex="0" class="icon-edit">	
			<span>
				<a href="/" style="text-decorations:none; color:inherit;">Edit Bill</a>
			</span>
		</li>
		<li tabindex="0" class="icon-stock">
			<div class="toggle">
				<div class="toggle_body">
					View Stock
				</div>
			</div>
		</li>
		<li tabindex="0" class="icon-stock">
					<a href="${pageContext.request.contextPath}/renderstock" style="text-decorations:none; color:inherit;">Stock</a>
		</li>
		<li tabindex="0" class="icon-logout">
			<span>
				<a href="${pageContext.request.contextPath}/logout" style="text-decorations:none; color:inherit;">Logout</a>
			</span>
		</li>
	</ul>
	</nav>

	<main>
	 <jsp:include page='viewStock.jsp' />
	<c:if test = "${pageRequested == 'renderBill'}">
		<div class="helper">
			<jsp:include page='renderbill.jsp' />
			<c:if test="${not empty renderbill.billMap}">
				<jsp:include page='billList.jsp' />
			</c:if>
		</div>
	</c:if>
	
	<c:if test = "${pageRequested == 'dashboard'}">
		<jsp:include page='dashboard.jsp' />
	</c:if>
	<c:if test = "${pageRequested == 'renderstock'}">
		<jsp:include page='renderStock.jsp' />
	</c:if>
	</main>
</body>
</html>