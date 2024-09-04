package org.example.service.locationService;

import org.example.model.Location;

import java.sql.SQLException;
import java.util.List;

public interface ILocationService {
    public void insertLocation(Location location) throws SQLException;

    public Location selectLocation(int id);

    public List<Location> getAllLocations();

    public boolean deleteLocation(int id) throws SQLException;

    public boolean updateLocation(Location location) throws SQLException;
}
