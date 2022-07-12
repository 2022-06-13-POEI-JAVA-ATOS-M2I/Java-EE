<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${param.title}</title>
    <c:if test="${param.css != null}">
        <link href="style/${param.css}" rel="stylesheet" type="text/css"/>
    </c:if>
</head>
