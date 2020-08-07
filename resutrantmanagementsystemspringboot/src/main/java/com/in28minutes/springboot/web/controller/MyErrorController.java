package com.in28minutes.springboot.web.controller;

import java.util.Date;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@Controller
public class MyErrorController implements ErrorController  {
 
    @RequestMapping("/error")
    public String handleError() {
        //do something like logging
        return "/bms/error";
    }
 
    @Override
    public String getErrorPath() {
        return null;
    }
}