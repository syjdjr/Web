<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel ="stylesheet" href = "./resources/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class = "jumbotron" >
		<div class = "container">
			<h1 class = "display-3">상품 목록</h1>
		</div>
	</div>	
	<div class = "container">
		<div class = "row" align="center">

			<%
				PreparedStatement pstmt = null;
			 	ResultSet rs = null;
			 	String sql = "select * from product";
			 	while(rs.next()) {
 			%>
			<div class="col-md-4">	
				<img alt="" src="${pageContext.servletContext.contextPath}/resources/images/<%=rs.getString("p_fileName") %>" style="width: 100%" >
				<h3><%= rs.getString("p_name") %></h3>
				<p>	<%= rs.getString("p_description") %>
				<p>	<%= rs.getInt("p_unitPrice") %> 원 
				<p> <a href="./product.jsp?id=<%= rs.getString("p_id") %>"
					class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>