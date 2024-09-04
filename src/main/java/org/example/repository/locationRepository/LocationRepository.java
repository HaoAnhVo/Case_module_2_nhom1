package org.example.repository.locationRepository;

import org.example.model.Location;
import org.example.repository.BaseRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class LocationRepository implements ILocationRepository{
    private static final String INSERT_LOCATION = "INSERT INTO location (locationName, mapLink) VALUES (?, ?)";
    private static final String SELECT_ALL_LOCATIONS = "select * from locations";
    private static final String SELECT_LOCATION_BY_ID = "select * from location where id = ?";
    @Override
    public void insertLocation(Location location) throws SQLException {
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_LOCATION)) {
            preparedStatement.setString(1, location.getLocationName());
            preparedStatement.setString(2, location.getMapLink());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public Location selectLocation(int id) {
        Location location = null;
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_LOCATION_BY_ID);) {

        } catch (SQLException e) {
            printSQLException(e);
        }
        return location;
    }

    @Override
    public List<Location> getAllLocations() {
        List<Location> locations = new ArrayList<>();
        try (Connection connection = BaseRepository.getConnection();
             Statement statement = connection.createStatement()) {
            ResultSet resultSet = statement.executeQuery(SELECT_ALL_LOCATIONS);
            while (resultSet.next()) {
                int id = resultSet.getInt("locationId");
                String locationName = resultSet.getString("locationName");
                String mapLink = resultSet.getString("mapLink");

                locations.add(new Location(id, locationName, mapLink));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return locations;
    }

    @Override
    public boolean deleteLocation(int id) throws SQLException {
        return false;
    }

    @Override
    public boolean updateLocation(Location location) throws SQLException {
        return false;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
