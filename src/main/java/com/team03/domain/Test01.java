package com.team03.domain;

import java.io.Serializable;

public class Test01 implements Serializable{

    private int id;
    private String name;
    private String password;
    private int state;

    public Test01() {
    }

    public Test01(String name, String password, int state) {
        this.name = name;
        this.password = password;
        this.state = state;
    }

    @Override
    public String toString() {
        return "Test01{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", state=" + state +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
