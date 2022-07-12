<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <jsp:include page="include/header.jsp">
        <jsp:param name="title" value="Bienvenue :)" />
    </jsp:include>
    <body>
        <h1>Bonjour ${sessionScope.user.getEmail()}, vous êtes un ${sessionScope.user.getRole()}</h1>
        <a href="LogoutServlet">Logout</a>
    </body>
</html>
