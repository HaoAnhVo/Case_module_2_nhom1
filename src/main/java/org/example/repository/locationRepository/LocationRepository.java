package org.example.repository.locationRepository;

import org.example.model.Location;
import org.example.model.Post;
import org.example.repository.BaseRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class LocationRepository implements ILocationRepository {
    private static final String INSERT_LOCATION = "INSERT INTO locations (locationName, mapLink, imgURL) VALUES (?, ?, ?)";
    private static final String SELECT_ALL_LOCATIONS = "select * from locations";
    private static final String SELECT_LOCATION_BY_ID = "select * from locations where locationId = ?";
    private static final String DELETE_LOCATION_BY_ID = "delete from locations where locationId = ?";
    private static final String UPDATE_LOCATION = "update locations set locationName = ?, mapLink = ?, imgURL = ? where locationId = ?";
    private static final String SELECT_POSTS_BY_LOCATION_ID = "select * from posts where locationId = ?";

    @Override
    public void insertLocation(Location location) throws SQLException {
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_LOCATION)) {
            preparedStatement.setString(1, location.getLocationName());
            preparedStatement.setString(2, location.getMapLink());
            preparedStatement.setString(3, location.getImgURL());
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
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String locationName = rs.getString("locationName");
                String mapLink = rs.getString("mapLink");
                String imgURL = rs.getString("imgURL");
                location = new Location(id, locationName, mapLink, imgURL);
            }
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
                String imgURL = resultSet.getString("imgURL");
                locations.add(new Location(id, locationName, mapLink, imgURL));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return locations;
    }
        String query = "SELECT * FROM locations";

    @Override
    public void deleteLocation(int id) throws SQLException {
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_LOCATION_BY_ID)){
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateLocation(Location location) throws SQLException {
        try (Connection connection = BaseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_LOCATION)) {
            preparedStatement.setString(1, location.getLocationName());
            preparedStatement.setString(2, location.getMapLink());
            preparedStatement.setString(3, location.getImgURL());
            preparedStatement.setInt(4, location.getLocationId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }

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

    @Override
    public List<Post> getPostsByLocation(int locationId) {
        List<Post> posts = new ArrayList<>();
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(SELECT_POSTS_BY_LOCATION_ID)) {
            ps.setInt(1, locationId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Post post = new Post();
                post.setPostId(rs.getInt("postId"));
                post.setTitle(rs.getString("title"));
                post.setContent(rs.getString("content"));
                post.setImageUrl(rs.getString("imageUrl"));
                post.setCreatedAt(rs.getDate("createdAt"));
                post.setUpdatedAt(rs.getDate("updatedAt"));
                post.setLocationId(rs.getInt("locationId"));
                post.setCategoryId(rs.getInt("categoryId"));
                post.setAuthorId(rs.getInt("authorId"));
                posts.add(post);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }
}
