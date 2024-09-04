package org.example.service.locationService;

import org.example.model.Location;
import org.example.repository.locationRepository.ILocationRepository;
import org.example.repository.locationRepository.LocationRepository;

import java.sql.SQLException;
import java.util.List;

public class LocationService implements ILocationService {
    private static ILocationRepository iLocationRepository = new LocationRepository();


    @Override
    public void insertLocation(Location location) throws SQLException {
        iLocationRepository.insertLocation(location);
    }

    @Override
    public Location selectLocation(int id) {
        return iLocationRepository.selectLocation(id);
    }

    @Override
    public List<Location> getAllLocations() {
        return iLocationRepository.getAllLocations();
    }

    @Override
    public boolean deleteLocation(int id) throws SQLException {
        return iLocationRepository.deleteLocation(id);
    }

    @Override
    public boolean updateLocation(Location location) throws SQLException {
        return iLocationRepository.updateLocation(location);
    }
}
