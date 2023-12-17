<%@ page language="java" import="java.util.Map" %>

<%
    String username = (String) request.getSession().getAttribute("username");
%>

<nav class="navbar navbar-expand navbar-dark bg-dark">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="./shop.jsp">SHOP</a>
            <a class="navbar-brand" href="./welcome.jsp" id="logo">Winter Wonders</a>
            <a class="navbar-brand" href="./login.jsp">LOGIN</a>
        </div>
        <span class="navbar-text">
            <% if ( username != null) { %>
				<%= username %>
                <a href = "logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>	
            <% } else { %>
                <a href = "login.jsp" class="btn btn-sm btn-success pull-right">login</a>	
            <% } %>
        </span>
    </div>
</nav>
