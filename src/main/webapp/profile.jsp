<%@ page import="fr.m2i.session.Utilisateur"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" %>
<html>
    <head>
        <title>Profile</title>
    </head>
    <body>
        <%
            Utilisateur u = (Utilisateur) request.getAttribute("user");
        %>
        <h1 align='center'>
            Votre email est : <%= u.getEmail()%><br/>
            Votre mot de passe est : <%= u.getMotPasse()%><br/>
        </h1>
    </body>
</html>