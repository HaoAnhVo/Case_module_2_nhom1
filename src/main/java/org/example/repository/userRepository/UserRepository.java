package org.example.repository.userRepository;

import org.example.model.Post;
import org.example.model.User;
import org.example.repository.BaseRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository {
    public User getUserByUsernameAndPassword(String username, String password) {
        String query = "SELECT * FROM users WHERE username=? AND password=?";
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("userId"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setRole(rs.getString("role"));
                user.setBirthday(rs.getDate("birthday"));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public User getUserById(int userId) {
        User user = null;
        String query = "SELECT userId, username, password, name, email, role, birthday FROM users WHERE userId = ?";

        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, userId);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    user = new User();
                    user.setUserId(rs.getInt("userId"));
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setName(rs.getString("name"));
                    user.setEmail(rs.getString("email"));
                    user.setRole(rs.getString("role"));
                    user.setBirthday(rs.getDate("birthday"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }

    public void addUser(User user) {
        String query = "INSERT INTO users(username, password, name, email, role,birthday) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getName());
            ps.setString(4, user.getEmail());
            ps.setString(5, user.getRole());
            ps.setDate(6, new java.sql.Date(user.getBirthday().getTime()));
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateUser(User user) {
        String query = "UPDATE users SET username=?, password=?, name=?, email=?, role=?, birthday=? WHERE userId=?";
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getName());
            ps.setString(4, user.getEmail());
            ps.setString(5, user.getRole());
            ps.setDate(6, new java.sql.Date(user.getBirthday().getTime()));
            ps.setInt(7, user.getUserId());

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteUser(int userId) {
        String query = "DELETE FROM users WHERE userId=?";
        try (Connection con = BaseRepository.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
            ps.setInt(1, userId);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<User> getAllUsers() {
        String query = "SELECT * FROM users";
        List<User> users = new ArrayList<>();
        try (Connection con = BaseRepository.getConnection(); Statement st = con.createStatement(); ResultSet rs = st.executeQuery(query)) {
            while (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("userId"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setRole(rs.getString("role"));
                user.setBirthday(rs.getDate("birthday"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
}
