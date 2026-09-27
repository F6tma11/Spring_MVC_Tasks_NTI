package com.fatma.mvc.component.abstrac;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import java.util.List;

public class AuthorController extends AbstractController {

    @Override
    protected ModelAndView handleRequestInternal
            (HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<String> authors=List.of("Robert C. Martin" ,
                "Joshua Bloch" ,
                "Kathy Sierra");

        ModelAndView modelAndView=new ModelAndView("Authors");
        modelAndView.addObject("authors",authors);

        return modelAndView;
    }
}
