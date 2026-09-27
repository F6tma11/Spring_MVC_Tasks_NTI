package com.example.model;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import org.springframework.stereotype.Component;

@Component
public class Task {

    private int id;
    @NotBlank(message = "Title can not be null")
    private String title;
    private boolean completed;
    @NotNull(message = "Priority can not be null")
    private Priority priority;

    public Task(int id, String title, boolean completed, Priority priority) {
        this.id = id;
        this.title = title;
        this.completed = completed;
        this.priority = priority;
    }

    public Task(){}
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public boolean isCompleted() {
        return completed;
    }

    public void setCompleted(boolean completed) {
        this.completed = completed;
    }

    public Priority getPriority() {
        return priority;
    }

    public void setPriority(Priority priority) {
        this.priority = priority;
    }
}
