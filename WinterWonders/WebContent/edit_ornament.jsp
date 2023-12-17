<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<h1 class = "display-3"> Ornaments </h1>
	</div>
	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp" %>
			<%
				PreparedStatement pstmt = null;
			 	ResultSet rs = null;
			 	String sql = "select * from product";
			 	pstmt = conn.prepareStatement(sql);
			 	rs = pstmt.executeQuery();
			 	while(rs.next()) {
 			%>
 			
			<div class="col-md-4">
				<img src = "./resources/images/<%=product.getFilename()%>" style = "width:100%" >
				<h3><%=rs.getString("p_name)%></h3>
				<p><%=rs.getString("p_description")%>
				<p><%=rs.getInt("p_unitPrice")%>원
				
				<p><a href="./product.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button">
				상품 수정 &raquo;</a>
			</div>
			
			<%
			 	}
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			%>
		</div>
	
	</div>
	<%@include file = "footer.jsp" %>
</body>
</html>