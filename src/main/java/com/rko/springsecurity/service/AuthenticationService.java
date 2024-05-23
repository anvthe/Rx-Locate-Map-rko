package com.rko.springsecurity.service;

import com.rko.springsecurity.dto.AuthenticationRequestDTO;
import com.rko.springsecurity.dto.AuthenticationResponseDTO;
import com.rko.springsecurity.dto.RegisterRequestDTO;
import com.rko.springsecurity.domain.entity.User;
import com.rko.springsecurity.domain.entity.Role;
import com.rko.springsecurity.repository.UserRepository;
import lombok.RequiredArgsConstructor;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthenticationService {

    private final UserRepository repository;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final AuthenticationManager authenticationManager;

    public AuthenticationResponseDTO register(RegisterRequestDTO request) {
        var user = User.builder()
                .firstname(request.getFirstname())
                .lastname(request.getLastname())
                .username(request.getUsername())
                .password(passwordEncoder.encode(request.getPassword()))
                .role(Role.USER)
                .build();
        repository.save(user);
        var jwtToken = jwtService.generateToken(user);

        return AuthenticationResponseDTO.builder()
                .token(jwtToken)
                .build();
    }

    public String authenticate(AuthenticationRequestDTO request) {

        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(request.getUsername(), request.getPassword())
        );
        var user = repository.findByUsername(request.getUsername()).orElseThrow();
        var jwtToken = jwtService.generateToken(user);

        //new added
        //String tokenWithoutPrefix = jwtService.extractTokenString(jwtToken);

//        return AuthenticationResponse.builder()
//                .token(jwtToken)
//                //.token(tokenWithoutPrefix)
//                .build();
        return jwtToken;
    }
}