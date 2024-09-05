package org.example.service.locationService;

import org.example.model.Location;
import org.example.repository.locationRepository.ILocationRepository;
import org.example.repository.locationRepository.LocationRepository;

import java.util.List;

public class LocationService implements ILocationService {
    ILocationRepository iLocationRepository = new LocationRepository();

    @Override
    public List<Location> getAllLocations() {
        return iLocationRepository.getAllLocations();
    }
}
