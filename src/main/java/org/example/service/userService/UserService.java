package org.example.service.userService;

import org.example.model.User;
import org.example.repository.userRepository.IUserRepository;
import org.example.repository.userRepository.UserRepository;

import java.util.List;


public class UserService implements IUserService {

    IUserRepository iUserRepository = new UserRepository();

    @Override
    public User getUserByUsernameAndPassword(String username, String password) {
        return iUserRepository.getUserByUsernameAndPassword(username, password);
    }

    @Override
    public User getUserById(int userId) {
        return iUserRepository.getUserById(userId);
    }

    @Override
    public List<User> getAllUsers() {
        return iUserRepository.getAllUsers();
    }

    @Override
    public void addUser(User user) {
        iUserRepository.addUser(user);
    }

    @Override
    public void updateUser(User user) {
        iUserRepository.updateUser(user);
    }

    @Override
    public void deleteUser(int userId) {
        iUserRepository.deleteUser(userId);
    }
}
