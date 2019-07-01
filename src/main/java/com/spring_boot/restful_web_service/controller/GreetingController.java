package com.spring_boot.restful_web_service.controller;

import com.spring_boot.restful_web_service.bean.Greeting;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.atomic.AtomicLong;

@RestController
public class GreetingController {

    private static final String TEMPLATE = "Hello，%s！";
    private final AtomicLong COUNTER = new AtomicLong();

    @RequestMapping(value = "greeting", method = RequestMethod.GET)
    public Greeting greeting(@RequestParam(value = "name", defaultValue = "World") String username) {
        return new Greeting(COUNTER.incrementAndGet(),
                String.format(TEMPLATE, username));
    }
}
