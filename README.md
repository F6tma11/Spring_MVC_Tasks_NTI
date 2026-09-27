# Spring MVC Custom Components

A simple Spring MVC project demonstrating how Spring MVC handles HTTP requests using different **HandlerMappings, HandlerAdapters, Controllers, and Views**.

## Concepts Covered

* `Controller`
* `AbstractController`
* `HttpRequestHandler`
* Custom Handler
* Custom `HandlerAdapter`
* `SimpleUrlHandlerMapping`
* `BeanNameUrlHandlerMapping`
* `SimpleControllerHandlerAdapter`
* `HttpRequestHandlerAdapter`
* `ParameterizableViewController`
* `InternalResourceViewResolver`
* `BeanNameViewResolver`
* Custom `View`
* `RedirectView`

## Project Examples

| URL           | Concept                                |
| ------------- | -------------------------------------- |
| `/books`      | Controller                             |
| `/authors`    | AbstractController                     |
| `/categories` | HttpRequestHandler                     |
| `/publishers` | Custom Handler + Custom HandlerAdapter |
| `/plain`      | Custom View                            |
| `/about`      | ParameterizableViewController          |
| `/home`       | RedirectView                           |

## Technologies

* Java
* Spring MVC
* Servlet API
* JSP
* JSTL
* Apache Tomcat
* Maven

## Purpose

The project was created to understand the internal flow of Spring MVC:

```text
HTTP Request
      ↓
HandlerMapping
      ↓
Handler
      ↓
HandlerAdapter
      ↓
ModelAndView
      ↓
ViewResolver
      ↓
View
      ↓
HTTP Response
```

The project uses static data and does not require a database.

# Task Management - Spring MVC

A simple Task Management web application built using **Spring MVC**, **JSP**, and **JSTL**.

## Features

* Display all tasks
* View a single task by ID
* Search tasks by priority
* Create a new task
* Form validation using Jakarta Bean Validation
* Handle missing tasks using `@ControllerAdvice`
* Display validation and error messages in JSP

## Technologies

* Java
* Spring MVC
* JSP
* JSTL
* Jakarta Validation
* Hibernate Validator
* Apache Tomcat
* Maven

## Task Model

Each task contains:

* `id`
* `title`
* `completed`
* `priority`

Supported priorities:

* LOW
* MEDIUM
* HIGH

## Endpoints

| Method | Endpoint                      | Description           |
| ------ | ----------------------------- | --------------------- |
| GET    | `/tasks`                      | List all tasks        |
| GET    | `/tasks/{id}`                 | Get task by ID        |
| GET    | `/tasks/search?priority=HIGH` | Search by priority    |
| GET    | `/tasks/new`                  | Open create task form |
| POST   | `/tasks`                      | Create a new task     |

## Validation

The application validates task input using:

```java
@NotBlank
private String title;

@NotNull
private Priority priority;
```

## Exception Handling

If a task does not exist, the application throws `TaskN
