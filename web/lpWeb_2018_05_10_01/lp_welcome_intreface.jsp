<%@ page import="java.sql.Connection" %>
<%@ page import="lp_2018_05_10_01ForJavaBean.lp_linkDatabase" %><%--
  Created by IntelliJ IDEA.
  User: liupe
  Date: 2018-05-10
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎页面</title>
</head>
<body>
    <%
        Connection conn = new lp_linkDatabase().getConnection();
        if (conn == null) {
            out.println("数据库连接失败！");
        } else {
            out.println("数据库连接成功！");
        }
    %>
</body>
</html>
