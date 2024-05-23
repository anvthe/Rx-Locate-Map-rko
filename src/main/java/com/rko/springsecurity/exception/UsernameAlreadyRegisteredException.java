package com.rko.springsecurity.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.server.ResponseStatusException;

public class UsernameAlreadyRegisteredException extends ResponseStatusException {
    public UsernameAlreadyRegisteredException() {
        super(HttpStatus.BAD_REQUEST, "Username already registered");
    }
}