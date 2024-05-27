package com.rko.springsecurity.exception;


import com.rko.springsecurity.dto.RegisterRequestDTO;
import com.rko.springsecurity.repository.UserRepository;

public class Validation {

    public static void validateRegisterRequest(RegisterRequestDTO request, UserRepository userRepository) {
        if (request.getUsername() == null || request.getUsername().isEmpty()) {
            throw new UsernameMandatoryException();
        }

        if (request.getPassword() == null || request.getPassword().isEmpty()) {
            throw new PasswordMandatoryException();
        }

        if (userRepository.findByUsername(request.getUsername()).isPresent()) {
            throw new UsernameAlreadyRegisteredException();
        }
    }
}