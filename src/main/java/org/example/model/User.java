package org.example.model;

import java.sql.Date;

public class User {
    private int userId;
    private String username;
    private String password;
    private String name;
    private String email;
    private String role;
    private Date birthday;
    private String formattedBirthday;

    public User() {}
    public User(int userId, String username, String password, String name, String email, Date birthday, String role) {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.name = name;
        this.email = email;
        this.role = role;
        this.birthday = birthday;
    }

    public User(String username, String password, String name, String email, Date birthday, String role) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.email = email;
        this.role = role;
        this.birthday = birthday;
    }

    // Getters and Setters
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getFormattedBirthday() {
        return formattedBirthday;
    }

    public void setFormattedBirthday(String formattedBirthday) {
        this.formattedBirthday = formattedBirthday;
    }
}
