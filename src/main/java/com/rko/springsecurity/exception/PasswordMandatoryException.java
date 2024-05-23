package com.rko.springsecurity.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.server.ResponseStatusException;

public class PasswordMandatoryException extends ResponseStatusException {
    public PasswordMandatoryException() {
        super(HttpStatus.BAD_REQUEST, "Password is mandatory");
    }
}