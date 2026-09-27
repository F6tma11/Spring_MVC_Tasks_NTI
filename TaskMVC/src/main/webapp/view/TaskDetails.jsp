<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task Details</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f5f5f5;
        }

        .container {
            width: 500px;
            margin: 70px auto;
        }

        .card {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.1);
        }

        h1 {
            margin-top: 0;
        }

        .row {
            padding: 12px 0;
            border-bottom: 1px solid #eee;
        }

        .label {
            font-weight: bold;
            display: inline-block;
            width: 100px;
        }

        .back {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #333;
        }
    </style>
</head>

<body>

<div class="container">

    <div class="card">

        <h1>Task Details</h1>

        <div class="row">
            <span class="label">ID:</span>
            ${task.id}
        </div>

        <div class="row">
            <span class="label">Title:</span>
            ${task.title}
        </div>

        <div class="row">
            <span class="label">Priority:</span>
            ${task.priority}
        </div>

        <div class="row">
            <span class="label">Status:</span>

            <c:choose>
                <c:when test="${task.completed}">
                    Completed
                </c:when>

                <c:otherwise>
                    Pending
                </c:otherwise>
            </c:choose>

        </div>

        <a class="back"
           href="${pageContext.request.contextPath}/tasks">
            ← Back to Tasks
        </a>

    </div>

</div>

</body>
</html>

