package org.example.repository.locationRepository;

import org.example.model.Location;
import org.example.repository.BaseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LocationRepository implements ILocationRepository {
    @Override
    public List<Location> getAllLocations() {
        List<Location> locations = new ArrayList<>();
        String query = "SELECT * FROM locations";

        try (Connection con = BaseRepository.getConnection();
             PreparedStatement ps = con.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Location location = new Location();
                location.setLocationId(rs.getInt("locationId"));
                location.setLocationName(rs.getString("locationName"));
                location.setLocationImage(rs.getString("imageURL"));
                locations.add(location);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return locations;
    }
}
