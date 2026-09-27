package com.fatma.mvc.component.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import java.util.List;

public class BookController implements Controller {
    @Override
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<String> books=List.of(
                "Java Head First",
                "Clean Code",
                "Java Effective"
        );
        ModelAndView modelAndView=new ModelAndView("Books");
        modelAndView.addObject("books",books);
        return modelAndView;
    }
}
