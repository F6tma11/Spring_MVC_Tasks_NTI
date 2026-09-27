package com.example.advice;

import com.example.exceptions.TaskNotFoundException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionHandlerAdvisor {

    @ExceptionHandler(TaskNotFoundException.class)
    public String taskNotFound(TaskNotFoundException ex, Model model){
        model.addAttribute("message",ex.getMessage());
        return "error";
    }
}
