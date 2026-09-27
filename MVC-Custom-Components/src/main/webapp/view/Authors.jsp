<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Author</title>
</head>
<body>

<h1>Authors</h1>

<ul>
    <c:forEach var="author" items="${authors}">
        <li>${author}</li>
    </c:forEach>
</ul>

</body>
</html>