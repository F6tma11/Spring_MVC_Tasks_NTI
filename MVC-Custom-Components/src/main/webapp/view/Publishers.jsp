<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Publishers</title>
</head>
<body>

<h1>Publishers</h1>

<ul>
    <c:forEach var="publisher" items="${publishers}">
        <li>${publisher}</li>
    </c:forEach>
</ul>

</body>
</html>