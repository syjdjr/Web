<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<jsp:useBean id = "productDAO" class="dao.ProductRepository" scope="session" />

<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
	href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Winter Wonders</title>
</head>
<body>
	<%@include file = "menu.jsp" %>
	<%@include file = "category.jsp" %>
	<div class = "container">
			<h1 class = "display-3"> ALL </h1>
	</div>
	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for(int i=0; i<listOfProducts.size(); i++){
					Product product = listOfProducts.get(i);
			%>
				<div class="col-md-4">
					<img src = "./resources/images/<%=product.getFilename()%>" style = "width:100%" >
					<h3><%=product.getPname()%></h3>
					<p><%=product.getDescription()%>
					<p><%=product.getUnitPrice()%>원
					<p><%=product.get %>
					<p><a href="./product.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button">
					상품 &raquo;</a>
				</div>
			<%
				}
			%>
		</div>
	</div>

	<%@include file = "footer.jsp" %>
</body>
</html>