<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
    <jsp:include page="include/header.jsp">
         <jsp:param name="title" value="Question 2" />
    </jsp:include>
<body>
    <form method="post" action="">
        <label>Entrer un nombre : </label>
        <input type="text" name="nbr" value="" />
        <input type="submit" value="valider" />

        <c:set var="v" value="${param.nbr}" />
        <c:set var="etat" value ="0" />
        <c:forEach var="item" begin="2" end="${v / 2}">
            <c:if test="${v % item == 0 && v != item}">
                    <c:set var="etat" value ="1" />
            </c:if>
        </c:forEach>
        <br />
        <c:if test="${etat == 0}">
            <c:out value="${v}"/> Nombre premier <br />
        </c:if>
        <c:if test="${etat != 0}">
            <c:out value="${v}"/> Nombre non premier <br />
        </c:if>
    </form>
</body>
</html>