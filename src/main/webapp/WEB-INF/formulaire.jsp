<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <jsp:include page="../include/header.jsp">
        <jsp:param name="title" value="Register IT Club" />
        <jsp:param name="css" value="formulaire.css" />
    </jsp:include>
    <body>
        <form action="" method="POST">
            <fieldset>
                <legend>Inscription</legend>
                <table border="0">
                    <tr>
                        <td>Nom</td>
                        <td><input type="text" name="nom" value="" required title="Le nom doit être en majuscule" autofocus=""/></td>
                        <td>*</td>
                    </tr>
                    <tr>
                        <td>Prénom</td>
                        <td><input type="text" name="prenom" value="" required=""/></td>
                        <td>*</td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" id ="email" name="email" value="" required=""/></td>
                        <td>*</td>
                    </tr>
                    <tr>
                        <td>Date de Naissance</td>
                        <td><input type="date" name="date" value="" required=""/></td>
                        <td>*</td>
                    </tr>
                    <tr>
                        <td>Téléphone</td>
                        <td><input type="tel" name="telephone" required="" value=""/></td>
                        <td>*</td>
                    </tr>
                    <tr>
                        <td>Sexe</td>
                        <td><input type="radio" name="sexe" value="M" />M
                            <input type="radio" name="sexe" value="F" />F</td>
                        <td>*</td>
                    </tr>
                    <tr>
                        <td>Mot de passe</td>
                        <td><input id="pass1" type="password"  name="password" value="" /></td>
                        <td>*</td>
                    </tr>
                    <tr>
                        <td>Confirmer mot de passe</td>
                        <td><input id="pass2" type="password" name="password" value=""/></td>
                        <td>* <label id="msg" ></label>  </td>
                    </tr>
                    <tr>
                        <td>Pays</td>
                        <td><select name="pays">
                                <option>Maroc</option>
                                <option>France</option>
                                <option>Algerie</option>
                                <option>Japon</option>
                            </select></td>
                        <td>*</td>
                    </tr>
                    <tr>
                        <td>Langague Préférés</td>
                        <td><input type="checkbox" name="langages" value="C++" />C++</br>
                            <input type="checkbox" name="langages" value="Java" />Java</br>
                            <input type="checkbox" name="langages" value="Php" />Php</br>
                            <input type="checkbox" name="langages" value="Perl" />Perl</td>
                        <td>*</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Valider" /><input type="reset" value="Cancel" /></td>
                        <td></td>
                    </tr>

                </table>
            </fieldset>
        </form>
    </body>
</html>
