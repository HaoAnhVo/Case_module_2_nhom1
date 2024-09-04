package org.example.service.locationService;

import org.example.model.Location;

import java.sql.SQLException;
import java.util.List;

public interface ILocationService {
    public void insertLocation(Location location) throws SQLException;

    public Location selectLocation(int id);

    public List<Location> getAllLocations();

    public void deleteLocation(int id) throws SQLException;

    public void updateLocation(Location location) throws SQLException;
}
