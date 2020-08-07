package com.in28minutes.springboot.web.exception;

import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.http.HttpStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class UserNotFoundException extends Exception {
	public UserNotFoundException(String message) {
		super(message);
	}
}