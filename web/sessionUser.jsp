<%--
  Created by IntelliJ IDEA.
  User: linye
  Date: 2022/5/18
  Time: 11:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Session User</title>
  </head>
  <body>
    <%
      String username = (String) session.getAttribute("session_username");
      // 判断session是否失效
      if (null != username) {
        out.println("<h1> Get username in session: " + username + "<h1/>");
        out.println("<h1> Username: " + username + "<h1/>");
      } else {
        response.sendRedirect("login.jsp");
      }

    %>
  </body>
</html>
