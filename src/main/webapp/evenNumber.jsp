<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Les nombres pairs compris entre 1 et 30</title>
    </head>
    <body>
        <c:forEach var="i" begin="1" end="30" step="1">
            <c:if test="${i % 2 == 0}">
                <c:out value="${i}" />
                <br />
            </c:if>
        </c:forEach>
    </body>
</html>
