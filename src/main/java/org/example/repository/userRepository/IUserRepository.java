package org.example.repository.userRepository;

import org.example.model.User;

import java.util.List;

public interface IUserRepository {
    User getUserByUsernameAndPassword(String username, String password);

    User getUserById(int userId);

    List<User> getAllUsers();

    void addUser(User user);

    void updateUser(User user);

    void deleteUser(int userId);
}
