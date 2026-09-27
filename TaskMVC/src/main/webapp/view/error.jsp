<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task Not Found</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f5f5f5;
        }

        .container {
            width: 450px;
            margin: 100px auto;
            text-align: center;
        }

        .card {
            background: white;
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.1);
        }

        h1 {
            color: #b00020;
        }

        p {
            color: #666;
        }

        a {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 18px;
            background: #333;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>

<body>

<div class="container">

    <div class="card">

        <h1>Task Not Found</h1>

        <p>
            The requested task does not exist.
        </p>

        <a href="${pageContext.request.contextPath}/tasks">
            Back to Tasks
        </a>

    </div>

</div>

</body>
</html>

