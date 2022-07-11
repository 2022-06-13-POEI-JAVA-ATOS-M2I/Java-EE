<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <jsp:include page="include/header.jsp">
        <jsp:param name="title" value="Factoriel - question 1" />
    </jsp:include>
    <body>

        <c:forEach var="i" begin="0" end="9">
            <c:out value="${i}"/>! =
            <c:out value="${result.get(i)}"/>
            <br />
        </c:forEach>

    </body>
</html>
