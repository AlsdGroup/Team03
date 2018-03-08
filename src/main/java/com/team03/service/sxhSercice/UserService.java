package com.team03.service.sxhSercice;

import com.team03.domain.User;

import java.util.Set;



public interface UserService {

    User selectByUserName(String userName);

    Set<String> getRoles(String userName);

    Set<String> getPermissions(String userName);
}
