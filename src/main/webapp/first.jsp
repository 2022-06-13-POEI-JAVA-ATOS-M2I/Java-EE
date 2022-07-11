<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="include/header.jsp">
         <jsp:param name="title" value="Mon jolie titre en param" />
    </jsp:include>
    <body>
        <h1>Bonjour <%= request.getParameter("query") %></h1>
    </body>
</html>
