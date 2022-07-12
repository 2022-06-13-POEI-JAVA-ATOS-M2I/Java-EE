<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../include/header.jsp">
        <jsp:param name="title" value="Mon joli distributeur" />
    </jsp:include>
    <body>
        <h2>Crédit restant : ${credit}</h2>
        <table>
            <caption>Liste des produits</caption>
            <tr>
                <th>Numéro de produit</th>
                <th>Nom</th>
                <th>Quantité</th>
                <th>Prix</th>
            </tr>

            <c:forEach var="p" items="${stock}">
                <tr>
                    <td><c:out value="${p.getId()}"/></td>
                    <td><c:out value="${p.getNom()}"/></td>
                    <td><c:out value="${p.getQuantite()}"/></td>
                    <td><c:out value="${p.getPrix()}"/></td>
                </tr>
            </c:forEach>

        </table>

        <br />

        <form method="POST" action="">
            <fieldset>
                <legend>Ajouter du crédit</legend>
                <p>
                    <label>Montant: </label>
                    <input type="number" name="credit" value="0" />
                </p>
                <input name="credit" type="submit" value="Ajouter" />
            </fieldset>
            <c:if test="${creditError != null}">
                <p style="color:red"><c:out value="${creditError}" /></p>
            </c:if>
        </form>

        <br />

        <form method="POST" action="">
            <fieldset>
                <legend>Acheter un produit</legend>
                <p>
                    <label>Numéro de produit: </label>
                    <input type="number" name="id" value="0" />
                </p>
                <input type="submit" value="Valider" />
            </fieldset>
            <c:if test="${productError != null}">
                <p style="color:red"><c:out value="${productError}" /></p>
            </c:if>
            <c:if test="${insufficientError != null}">
                <p style="color:red"><c:out value="${insufficientError}" /></p>
            </c:if>
        </form>

    </body>
</html>