package com.fatma.mvc.component.custom;

import java.util.List;

public class PublisherHandlerImpl implements PublisherHandler{
    @Override
    public List<String> getPublishers() {
        return List.of(
                "O'Reilly Media",
                "Manning Publications",
                "Packt Publishing");
    }
}
