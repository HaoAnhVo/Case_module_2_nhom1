package org.example.repository.locationRepository;

import org.example.model.Location;
import org.example.model.Post;

import java.sql.SQLException;
import java.util.List;

public interface ILocationRepository {
    public void insertLocation(Location location) throws SQLException;

    public Location selectLocation(int id);

    public List<Location> getAllLocations();

    public void deleteLocation(int id) throws SQLException;

    public void updateLocation(Location location) throws SQLException;

    public List<Post> getPostsByLocation(int locationId);
}
