<jsp:useBean id="user" scope="request" type="com.company.itstep.model.User"/>
<%--
  Created by IntelliJ IDEA.
  User: Evgeniy
  Date: 06.04.2021
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.company.itstep.model.User" %>
<html>
<head>
    <title>Show User</title>
</head>
<body>
<h1>User</h1>

<%
    user = (User) request.getAttribute("user");
%>
<p><strong>Name:</strong> <% out.println(((User) request.getAttribute("user")).getName());%></p>
<%
    for (int i = 0; i < 10; i++) {
        out.println("<p><strong>Last Name:</strong>"
                + ((User) request.getAttribute("user")).getLastName() + "</p>");
    }
%>
<p><strong>Email:</strong>${user.email}</p>
<p><strong>Age:</strong>${user.age}</p>
<p><strong>Subscribe:</strong><%
    if (user.isCheck()) {
        out.println("Yes");
    } else {
        out.println("No");
    }
%></p>
<%--<p><strong>Session:</strong>${sessionScope}</p>--%>


<%
    user = (User) session.getAttribute("userSession");
%>

<p><strong>Name session:</strong>${user.name}</p>
<p><strong>LastName session:</strong>${user.lastName}</p>
<p><strong>Email session:</strong>${user.email}</p>

</body>
</html>
