<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="GET">
            <label>Insérez une phrase</label>
            <input type="text" name="mot" value="" />
            <input type="submit" value="Nombre de mots" /><br>

            <c:if test="${nombre != null}">
                <label name="nbr">
                    <c:out value="${nombre}"/>
                </label>
            </c:if>
        </form>
    </body>
</html>
