<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css">
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
            <%
                String error = request.getParameter("error");
                if (error != null) {
                    out.println("<div class='alert alert-danger'>");
                    out.println("아이디와 비밀번호를 확인해 주세요");
                    out.println("</div>");
                }
            %>
            <form class="form-signin" method="post" action="login_process.jsp">
                <div class="form-group">
                    <label for="inputUserName" class="sr-only">ID</label>
                    <input type="text" class="form-control" placeholder="id" name='id' required autofocus>
                </div>

                <div class="form-group">
                    <label for="inputPassword" class="sr-only">PW</label>
                    <input type="password" class="form-control" placeholder="passwd" name='passwd' required autofocus>
                </div>

                <button class="btn btn-lg btn-success btn-block" type="submit" name="action" value="signIn">SIGN IN</button>
                
            </form>
            
            <!-- REGISTER 버튼 클릭 시 register.jsp로 이동 -->
            <form action="register.jsp" method="post">
            	<button class="btn btn-lg btn-success btn-block" type="submit" name="action" value="register">REGISTER</button>
            </form>

    
        </div>
    </div>
</body>
</html>
