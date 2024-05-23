package com.rko.springsecurity.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.server.ResponseStatusException;

public class UsernameMandatoryException extends ResponseStatusException {
    public UsernameMandatoryException() {
        super(HttpStatus.BAD_REQUEST, "Username is must mandatory");
    }
}