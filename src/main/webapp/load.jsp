<%@ page language="java" %>
<jsp:useBean id="u" class="fr.m2i.session.Utilisateur" scope="request"/>
<jsp:setProperty name="u" property="email" param="email"/>
<jsp:setProperty name="u" property="motPasse" param="motPasse"/>
<jsp:forward page="profile.jsp"  />