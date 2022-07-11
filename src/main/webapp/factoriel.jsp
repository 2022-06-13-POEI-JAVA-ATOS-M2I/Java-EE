<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <jsp:include page="include/header.jsp">
        <jsp:param name="title" value="Factoriel - question 1" />
    </jsp:include>
    <body>

        <form method="GET">
            <label>Entrez un nombre</label>
            <input type="text" name="number" value="" />
            <input type="submit" value="Calculer !" /><br>

            <c:if test="${result != null}">
                <label name="nbr">
                    <c:out value="${param.number}"/>! =
                    <c:out value="${result}"/>
                </label>
            </c:if>
        </form>

    </body>
</html>
