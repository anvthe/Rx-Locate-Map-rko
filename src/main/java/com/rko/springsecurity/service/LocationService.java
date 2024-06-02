package com.rko.springsecurity.service;

import com.rko.springsecurity.domain.Location;
import com.rko.springsecurity.dto.LocationDTO;
import com.rko.springsecurity.repository.LocationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class LocationService {

    private final LocationRepository locationRepository;

    public Optional<Location> getLocationByName(String name) {
        return locationRepository.findByName(name);
    }

    public Location getLocationById(Long locationId) {
        Optional<Location> optionalLocation = locationRepository.findById(locationId);
        return optionalLocation.orElse(null);
    }

    public List<LocationDTO> getAllLocations() {
        return locationRepository.findAll()
                .stream().map(LocationDTO::fromLocation).toList();
    }
}