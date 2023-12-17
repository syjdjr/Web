<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page errorPage="exceptionNoProductId.jsp" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<html>
<head>
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 상세 정보</title>
<script type="text/javascript">
	function addToCart(){
		if (confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		}else{
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<%@include file = "category.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
		// Product product = productDAO.getProductById(id);
	%>
	<div class = "container">
	
	<!-- 수정, 데이터베이스 연결 부분 추가 -->
		<%@ include file="dbconn.jsp" %>
		<%
			String productId = request.getParameter("id");
		
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "select * from product where p_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, productId);
			rs = pstmt.executeQuery();
			while(rs.next()) {
		%>
	
	<!-- 기존 내용, 수정 없음. -->
		<div class = "row">
			<div class = "col-md-5">
				<img src = "./resources/images/<%=product.getFilename()%>" style = "width:100%" >
			</div>
			
		<!-- 수정, rs. -->
			<div class = "col-md-6">
				<h3><%=rs.getString("p_name") %></h3>
				<p><%=rs.getString("p_description") %>
				<p> <b>상품코드</b> : <span class="badge badge-danger">
					<%=rs.getString("p_id") %></span>
				
				<p> <b>분  류</b> : <%=rs.getString("p_category") %>
				<p> <b>재고수</b> : <%=rs.getLong("p_unitsInStock") %>
				<h4><%=rs.getInt("p_unitPrice") %>원</h4>
				
				<p><form name="addForm" action="./addCart.jsp?id=<%=product.getProductId()%>" method="post">
				<a href="#" class="btn btn-info" onclick="addToCart()"> 상품 주문 &raquo;</a>
				<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
				<a href="./shop.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
				</form>
				
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
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>