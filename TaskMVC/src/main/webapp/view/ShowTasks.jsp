<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tasks</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f5f5f5;
            color: #333;
        }

        .container {
            width: 80%;
            max-width: 900px;
            margin: 50px auto;
        }

        h1 {
            margin-bottom: 25px;
        }

        .top-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .btn {
            text-decoration: none;
            background: #333;
            color: white;
            padding: 9px 15px;
            border-radius: 5px;
        }

        .task {
            background: white;
            padding: 18px;
            margin-bottom: 12px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.08);
        }

        .task-title {
            font-size: 18px;
            font-weight: bold;
        }

        .task-info {
            margin-top: 8px;
            color: #777;
        }

        .completed {
            color: green;
            font-weight: bold;
        }

        .pending {
            color: #c77d00;
            font-weight: bold;
        }

        .details {
            text-decoration: none;
            color: #555;
            margin-left: 10px;
        }
    </style>
</head>

<body>

<div class="container">

    <div class="top-bar">
        <h1>My Tasks</h1>

        <a class="btn" href="${pageContext.request.contextPath}/tasks/new">
            + New Task
        </a>
    </div>

    <c:choose>

        <c:when test="${empty tasks}">
            <p>No tasks found.</p>
        </c:when>

        <c:otherwise>

            <c:forEach var="task" items="${tasks}">

                <div class="task">

                    <div class="task-title">
                        ${task.title}
                    </div>

                    <div class="task-info">

                        Priority:
                        <strong>${task.priority}</strong>

                        &nbsp; | &nbsp;

                        Status:

                        <c:choose>

                            <c:when test="${task.completed}">
                                <span class="completed">
                                    Completed
                                </span>
                            </c:when>

                            <c:otherwise>
                                <span class="pending">
                                    Pending
                                </span>
                            </c:otherwise>

                        </c:choose>

                        <a class="details"
                           href="${pageContext.request.contextPath}/tasks/${task.id}">
                            View Details →
                        </a>

                    </div>

                </div>

            </c:forEach>

        </c:otherwise>

    </c:choose>

</div>

</body>
</html>
```
