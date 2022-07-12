<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <jsp:include page="../include/header.jsp">
        <jsp:param name="title" value="Validation IT Club" />
    </jsp:include>
    <body>
                <fieldset>
            <legend>Informations</legend>
            <table border="0">
                <tr>
                    <td>Nom : </td>
                    <td>${nom}</td>
                </tr>
                <tr>
                    <td>Prénom : </td>
                    <td>${prenom}</td>
                </tr>
                <tr>
                    <td>Email : </td>
                    <td>${email}</td>
                </tr>
                <tr>
                    <td>Date de naissance : </td>
                    <td>${date}</td>
                </tr>
                <tr>
                    <td>Téléphone : </td>
                    <td>${telephone}</td>
                </tr>
                <tr>
                    <td>Sexe : </td>
                    <td>${sexe}</td>
                </tr>
                <tr>
                    <td>Mot de passe :</td>
                    <td>${motPasse}</td>
                </tr>
                <tr>
                    <td>Pays : </td>
                    <td>${pays}</td>
                </tr>
                <tr>
                    <td>Languages préférés : </td>
                    <td>${langages}</td>
                </tr>
                <tr>
            </table>
 
        </fieldset>
    </body>
</html>
