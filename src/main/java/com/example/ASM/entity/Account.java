package com.example.ASM.entity;

public class Account {
    private int id;
    private String fullName;
    private String userName;
    private String email;
    private String password;
    private int status;


    public Account() {

    }

    public Account(int id, String fullName, String userName, String email, String password, int status) {
        this.id = id;
        this.fullName = fullName;
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.status = status;
    }

    public Account(String fullName, String userName, String email, String password, int status) {
        this.fullName = fullName;
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}