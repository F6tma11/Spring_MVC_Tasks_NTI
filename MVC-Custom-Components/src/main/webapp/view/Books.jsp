<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Books</title>
</head>
<body>

<h1>Books</h1>

<ul>
    <c:forEach var="book" items="${books}">
        <li>${book}</li>
    </c:forEach>
</ul>

</body>
</html>