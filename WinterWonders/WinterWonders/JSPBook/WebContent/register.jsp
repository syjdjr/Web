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
            <h1 class="display-3">REGISTER</h1>
        </div>
    </div>
    <div class="container" align="left">
        <div class="col-md-4 col-md-offset-4">
            
            <form class="form-register" method="post" action="register_process.jsp">
                <!-- ID 입력란 -->
                <div class="form-group">
                    <label for="inputUserName" class="sr-only">ID</label>
                    <input type="text" class="form-control" placeholder="ID" name="id" required autofocus>
                </div>

                <!-- 비밀번호 입력란 -->
                <div class="form-group">
                    <label for="inputPassword" class="sr-only">Password</label>
                    <input type="password" class="form-control" placeholder="Password" name="passwd" required autofocus>
                </div>
                
                
                
                <!-- 이름 입력란 -->
                <div class="form-group">
                    <label for="inputname" class="sr-only">Name</label>
                    <input type="text" class="form-control" placeholder="Name" name="name" required autofocus>
                </div>
                
                <!-- 전화번호 입력란 -->
                <div class="form-group">
                    <label for="inputPhone" class="sr-only">Phone Number</label>
                    <input type="tel" class="form-control" placeholder="Phone Number" name="phone" required autofocus>
                </div>
                
                <!-- 이메일 입력란 -->
                <div class="form-group">
                    <label for="inputEmail" class="sr-only">Email</label>
                    <input type="email" class="form-control" placeholder="Email" name="email" required autofocus>
                </div>

                <!-- 회원가입 버튼 -->
                <button class="btn btn-lg btn-success btn-block" type="submit" name="action" value="register">REGISTER</button>
            </form>

        </div>
    </div>
</body>
</html>
