<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
    <title>Database SQL</title>
</head>
<body>
    <%@ include file="dbconn.jsp" %>
    <table width="300" border="1">
        <tr>
            <th>아이디</th>
            <th>비밀번호</th>
            <th>이름</th>
            <th>전화번호</th>
            <th>이메일</th>
            
        </tr>
        <%
            ResultSet rs = null;
            PreparedStatement pstmt = null;

            try {
                String sql = "select * from Member";
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();

                while (rs.next()) {
                    String id = rs.getString("id");
                    String passwd = rs.getString("passwd");
                    String name = rs.getString("name");
                    String phone = rs.getString("phone");
                    String email = rs.getString("email");

                  
        %>
        <tr>
            <td><%=id %></td>
            <td><%=passwd %></td>
            <td><%=name %></td>
            <td><%=phone %></td>
            <td><%=email %></td>
            
        </tr>
        <%
                }
            } catch (SQLException ex) {
                out.println("Member 테이블 조회 중 오류가 발생했습니다.<br>");
                out.println("SQLException: " + ex.getMessage());
            } finally {
                if (rs != null)
                    rs.close();
                
                if (conn != null)
                    conn.close();
            }
        %>
    </table>
</body>
</html>
