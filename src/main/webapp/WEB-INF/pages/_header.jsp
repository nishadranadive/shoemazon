<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="header-container"
	style="text-align: left; border-bottom: 1px solid #ccc; position: relative; background: #5f5f5f; color: white;">

	<div class="site-name"
		style="font-size: 200%; margin: 10px 10px 10px 0px; padding: 5px;">Shoemazon</div>

	<div class="header-bar"
		style="position: absolute; right: 10px; bottom: 20px;">
		<c:if test="${pageContext.request.userPrincipal.name != null}">
        Hello
           <a href="${pageContext.request.contextPath}/accountInfo">
				${pageContext.request.userPrincipal.name} </a>
         &nbsp;|&nbsp;
           <a href="${pageContext.request.contextPath}/logout"
				style="color: white; font-size: bold;">Logout</a>

		</c:if>
		<c:if test="${pageContext.request.userPrincipal.name == null}">
			<a href="${pageContext.request.contextPath}/login">Login</a>
		</c:if>
	</div>
</div>
<div class="menu-container" style="text-align: right; margin: 10px 5px;">

	<a href="${pageContext.request.contextPath}/">Home</a> | <a
		href="${pageContext.request.contextPath}/productList"> Product
		List </a> | <a href="${pageContext.request.contextPath}/shoppingCart">
		My Cart </a> |
	<security:authorize access="hasAnyRole('ROLE_MANAGER','ROLE_EMPLOYEE')">
		<a href="${pageContext.request.contextPath}/orderList"> Order List
		</a>
     |
   </security:authorize>

	<security:authorize access="hasRole('ROLE_MANAGER')">
		<a href="${pageContext.request.contextPath}/product"> Create
			Product </a>
         |
   </security:authorize>

</div>