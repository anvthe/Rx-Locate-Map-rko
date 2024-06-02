package com.rko.springsecurity.dto;


import com.rko.springsecurity.domain.Location;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LocationDTO {

    private Long id;

    private String name;

    private double lat;

    private double lng;

    public static LocationDTO fromLocation(Location location) {
        return new LocationDTO(location.getId(), location.getName(), location.getLat(), location.getLng());
    }
}
