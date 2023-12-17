<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel ="stylesheet" href = "./resources/css/bootstrap.min.css">
<title>Login</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">LOGIN</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<!--  <h3 class="form-signin-heading"> LOGIN</h3> -->
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
				
			%>
			<form class="form-signin"  method="post">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">ID</label>
					<input type="text" class="form-control" placeholder="ID" 
					name='j_username' required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">PW</label>
					<input type="password" class="form-control" placeholder="Password" 
					name='j_password' required>
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit"> SIGN IN</button>
			</form>
			
			 <%
                if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("j_username") != null && request.getParameter("j_password") != null) {
                	out.clear();
                	response.sendRedirect("addProduct.jsp");
                }
            %>
			
		</div>
	</div>
</body>
</html>