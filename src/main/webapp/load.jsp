<%@ page import="fr.m2i.session.Utilisateur" %>
<%
    String email = request.getParameter("email");
    String motPasse = request.getParameter("motPasse");

    Utilisateur u = new Utilisateur(email, motPasse);

    request.setAttribute("user", u);
    
    RequestDispatcher requestDispatcher = request.getRequestDispatcher("profile.jsp");
    requestDispatcher.forward(request, response);
%>
