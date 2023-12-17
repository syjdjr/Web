<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.PrintWriter"%>
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
        String action = request.getParameter("action"); 

        ResultSet rs = null;
        PreparedStatement pstmt = null;

        try {
            if ("signIn".equals(action)) {
                // 로그인 처리 로직
                String loginSql = "SELECT id, passwd FROM member WHERE id = ? AND passwd = ?";
                pstmt = conn.prepareStatement(loginSql);
                pstmt.setString(1, id);
                pstmt.setString(2, passwd);
                rs = pstmt.executeQuery();

                if (rs.next()) {
                    String userId = rs.getString("id");
                    String userPasswd = rs.getString("passwd");

                    // 추가로 사용자의 name 정보를 가져옴
                    String getNameSql = "SELECT name FROM member WHERE id = ?";
                    PreparedStatement getNameStmt = conn.prepareStatement(getNameSql);
                    getNameStmt.setString(1, userId);
                    ResultSet nameResult = getNameStmt.executeQuery();

                    if (nameResult.next()) {
                        String username = nameResult.getString("name");

                        // 세션에 사용자 이름 저장
                        session.setAttribute("username", username);

                        // 관리자는 id : root , pw : 1234
                        if ("root".equals(userId) && "1234".equals(userPasswd)) {
                        	
                        	//추가
                        	session.setAttribute("root",userId);
                        	session.setAttribute("root_pw", userPasswd);
                 
                            response.sendRedirect("addProduct.jsp");
                        } else {
                            response.sendRedirect("shop.jsp");
                        }
                    } else {
                        out.println("사용자 이름을 가져오는데 실패했습니다.");
                    }
                } else {
                	response.sendRedirect("login_failed.jsp");
                }
            } else {
                out.println("Invalid action.");
            }
        } catch (SQLException ex) {
            out.println("SQLException: " + ex.getMessage());
        } finally {
            try {
                if (rs != null)
                    rs.close();
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            } catch (SQLException e) {
                out.println("SQLException: " + e.getMessage());
            }
        }
    %>
</body>
</html>
