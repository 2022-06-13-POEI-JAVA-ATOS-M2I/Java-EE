<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <jsp:include page="../include/header.jsp">
        <jsp:param name="title" value="Page de connexion :)" />
    </jsp:include>
    <body>
        <form action="LoginServlet" method="POST">  
            Email: <input type="text" name="email"><br>  
            Mot de passe: <input type="password" name="motPasse"><br>  
            <input type="submit" value="login">
        </form>
        <c:if test="${error != null}">
            <b><c:out value="${error}" /></b>
        </c:if>
    </body>
</html>
