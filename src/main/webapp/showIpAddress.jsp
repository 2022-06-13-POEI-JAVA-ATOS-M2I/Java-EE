<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show IP</title>
    </head>
    <body>
        <h1>Bonjour <%= request.getParameter("client") %> !</h1>
        <h1>Voici votre adresse IP : <%= request.getRemoteAddr() %></h1>
    </body>
</html>
