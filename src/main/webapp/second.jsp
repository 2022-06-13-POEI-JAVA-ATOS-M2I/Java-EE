<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="include/header.jsp">
         <jsp:param name="title" value="Mon second titre en param" />
    </jsp:include>
    <body>
        <h1>Au revoir <%= request.getParameter("query") %></h1>
    </body>
</html>
