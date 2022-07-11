<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page request headers</title>
    </head>
    <body>
        <h1></h1>
        <table>
            <tr>
                <th>Nom</th>
                <th>Valeur</th>
            </tr>
            <%
                List<String> headersName = (List) request.getAttribute("headersName");
                List<String> headersValue = (List) request.getAttribute("headersValue");
                for (int i = 0; i < headersName.size(); i++) {
                    out.println("<tr><td>" + headersName.get(i) + "</td>\n");
                    out.println("<td>" + headersValue.get(i) + "</td></tr>");
                }
            %>
        </table>
    </body>
</html>
