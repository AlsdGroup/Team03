package com.team03.mapper;

import com.team03.domain.User;

import java.util.Set;


public interface UserDao {

    User selectByUserName(String userName);

    Set<String> getRoles(String userName);

    Set<String> getPermissions(String userName);
}
