package com.fatma.mvc.component.abstrac;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.View;

import java.util.Map;

public class CustomView implements View {
    @Override
    public String getContentType() {
        return "text/plain;charset=UTF-8";
    }

    @Override
    public void render(Map<String, ?> model, HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType(getContentType());

        response.getWriter().write(
                "Hello from Custom View!\n" +
                        "This response is rendered by PlainTextView."
        );
    }
}
