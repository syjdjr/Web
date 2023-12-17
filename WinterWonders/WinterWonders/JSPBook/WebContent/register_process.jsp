<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*, java.io.PrintWriter"%>
<html>
<head>
    <title>Database SQL</title>
</head>
<body>
    <%@ include file="dbconn.jsp" %>
    <%
        request.setCharacterEncoding("utf-8");

        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String action = request.getParameter("action");
        
        

        PreparedStatement pstmt = null;

        try {
            // 회원가입 처리 로직
            String registerSql = "INSERT INTO member (id, passwd, name, phone, email) VALUES (?,?,?,?,?)";
            pstmt = conn.prepareStatement(registerSql);
            pstmt.setString(1, id);
            pstmt.setString(2, passwd);
            pstmt.setString(3, name);
            pstmt.setString(4, phone);
            pstmt.setString(5, email);
            
            session.setAttribute("name", name);

            pstmt.executeUpdate();

            response.sendRedirect("shop.jsp"); 
        } catch (SQLException ex) {
            out.println("SQLException: " + ex.getMessage());
        } finally {
            if (pstmt != null)
                pstmt.close();
            if (conn != null)
                conn.close();
        }
    %>
</body>
</html>
