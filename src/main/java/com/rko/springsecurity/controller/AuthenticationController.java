package com.rko.springsecurity.controller;


import com.rko.springsecurity.dto.AuthenticationRequestDTO;
import com.rko.springsecurity.dto.AuthenticationResponseDTO;
import com.rko.springsecurity.dto.RegisterRequestDTO;
import com.rko.springsecurity.service.AuthenticationService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
public class AuthenticationController {

 ;

    private final AuthenticationService service;


    @PostMapping("/register")
    public ResponseEntity<?> register(@Validated @RequestBody RegisterRequestDTO request) {
        try {
            service.register(request);
            return ResponseEntity.ok("User created successfully");
        } catch (ResponseStatusException ex) {
            return ResponseEntity.status(ex.getStatusCode()).body(ex.getReason());
        }
    }


    @PostMapping("/login")
    public ResponseEntity<?> authenticate(@RequestBody AuthenticationRequestDTO request) {
        try {
            String response = service.authenticate(request);
            return ResponseEntity.ok(response);
        } catch (UsernameNotFoundException ex) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(new AuthenticationResponseDTO("User not found"));

        }
    }
}









/*    @PostMapping("/register")
    public String register(@Validated @RequestBody RegisterRequestDTO request) {

        try {
            if (request.getUsername() == null || request.getUsername().isEmpty()) {
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Username is mandatory");
            }
            if (request.getPassword() == null || request.getPassword().isEmpty()) {
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Password is mandatory");
            }

            if(userRepository.findByUsername(request.getUsername()).isPresent()){

                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Username already registered");
            }
            ResponseEntity.ok(service.register(request));
            return ("User created successfully");

        } catch (ResponseStatusException ex) {
            return ex.getReason();
        }
    }*/