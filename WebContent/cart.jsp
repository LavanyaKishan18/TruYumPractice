<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.truYum.model.MenuItem"%>
<%@ page import="com.truYum.model.Cart"%>
<!doctype html>
<html>
<head>
<title>Cart</title>
<link rel="stylesheet" href="style\styleyum.css">
</head>
<body>
	<header class="header container-fluid">
		<h1 class="header-itemleft">truYum</h1>
		<img class="header-img" src="images\truyum.jfif"> <a
			class="header-itemright" href="ShowCartServlet">Cart</a> <a
			class="header-itemright" href="ShowMenuItemListCustomerServlet">Menu</a>
	</header>
	<section class="body-main">
		<c:if test="${removeCartStatus}">
			<h2 style="color: green; text-align: center">Item removed from
				Cart successfully</h2>
		</c:if>
		<h2>Cart</h2>
		<table width="85%">
			<tr>
				<th class="td-allignleft">Name</th>
				<th>Free Delivery</th>
				<th class="th-allignright">Price</th>
			</tr>
			<c:set var="sum" value="${0}"></c:set>
			<c:forEach var="cart" items="${cartMenuList}">
				<tr>

					<td class="td-allignleft">${cart.name}</td>
					<td>${cart.freeDelivery ? 'Yes' : 'No' }</td>

					<td class="th-allignright"><fmt:setLocale value="en_IN"
							scope="session" />
						<fmt:formatNumber type="currency" value="${cart.price}" /></td>
					<c:set var="sum" value="${sum+cart.price}"></c:set>
					<td><a href="RemoveCartServlet?menuItemId=${cart.id }">Delete</a>
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td></td>
				<td><lable>Total</lable></td>
				<td class="th-allignright"><fmt:setLocale value="en_IN" />
					<fmt:formatNumber type="currency" value="${sum}" /></td>
			</tr>

		</table>
	</section>
	<div class="footer">
		<p>Copyrightę2019</p>
	</div>
</body>
</html>
