package com.fatma.mvc.component.custom;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerAdapter;
import org.springframework.web.servlet.ModelAndView;

public class PublisherHandlerAdapter implements HandlerAdapter {
    @Override
    public boolean supports(Object handler) {
        return handler instanceof PublisherHandler;
    }

    @Override
    public ModelAndView handle(HttpServletRequest request,
                               HttpServletResponse response, Object handler) throws Exception {
        PublisherHandler publisherHandler= (PublisherHandler) handler;

        ModelAndView modelAndView=new ModelAndView("Publishers");
        modelAndView.addObject("publishers",publisherHandler.getPublishers());
        return modelAndView;
    }

    @Override
    public long getLastModified(HttpServletRequest request, Object handler) {
        return 0;
    }
}
