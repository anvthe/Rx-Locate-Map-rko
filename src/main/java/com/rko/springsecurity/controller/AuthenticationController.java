package com.rko.springsecurity.controller;


import com.rko.springsecurity.dto.AuthenticationRequestDTO;
import com.rko.springsecurity.dto.AuthenticationResponseDTO;
import com.rko.springsecurity.dto.RegisterRequestDTO;
import com.rko.springsecurity.repository.UserRepository;
import com.rko.springsecurity.service.AuthenticationService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
public class AuthenticationController {
    private final UserRepository userRepository;
    private final AuthenticationService service;


    @PostMapping("/register")
    public String register(@Validated @RequestBody RegisterRequestDTO request) {

        try {
            if (request.getUsername() == null || request.getUsername().isEmpty()) {
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Username is mandatory");
            }
            if (request.getPassword() == null || request.getPassword().isEmpty()) {
                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Password is mandatory");
            }

            if(userRepository.findByUsername(request.getUsername()).isPresent()){

                throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Username address already registered");
            }
            ResponseEntity.ok(service.register(request));
            return ("User created successfully");

        } catch (ResponseStatusException ex) {
            return ex.getReason();
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