<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>New Task</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f5f5f5;
        }

        .container {
            width: 450px;
            margin: 60px auto;
        }

        .card {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.1);
        }

        h1 {
            margin-top: 0;
            margin-bottom: 25px;
        }

        .field {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 7px;
            font-weight: bold;
        }

        input,
        select {
            width: 100%;
            box-sizing: border-box;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .error {
            color: #d00000;
            font-size: 13px;
            margin-top: 5px;
            display: block;
        }

        .checkbox {
            width: auto;
        }

        button {
            background: #333;
            color: white;
            border: none;
            padding: 10px 18px;
            border-radius: 5px;
            cursor: pointer;
        }

        .back {
            margin-left: 10px;
            text-decoration: none;
            color: #555;
        }
    </style>
</head>

<body>

<div class="container">

    <div class="card">

        <h1>Create Task</h1>

        <form:form
                method="post"
                action="${pageContext.request.contextPath}/tasks"
                modelAttribute="newTask">

            <div class="field">

                <label for="title">Title</label>

                <form:input
                        path="title"
                        id="title"
                        placeholder="Enter task title"/>

                <form:errors
                        path="title"
                        cssClass="error"/>

            </div>


            <div class="field">

                <label for="priority">Priority</label>

                <form:select path="priority" id="priority">

                    <form:option
                            value=""
                            label="-- Select Priority --"/>

                    <form:options
                            items="${priorities}"/>

                </form:select>

                <form:errors
                        path="priority"
                        cssClass="error"/>

            </div>


            <div class="field">

                <label>
                    <form:checkbox
                            path="completed"
                            cssClass="checkbox"/>

                    Completed
                </label>

            </div>


            <button type="submit">
                Create Task
            </button>

            <a class="back"
               href="${pageContext.request.contextPath}/tasks">
                Cancel
            </a>

        </form:form>

    </div>

</div>

</body>
</html>

