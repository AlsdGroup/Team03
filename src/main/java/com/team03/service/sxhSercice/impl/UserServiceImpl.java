package com.team03.service.sxhSercice.impl;

import com.team03.domain.User;
import com.team03.mapper.UserDao;
import com.team03.service.sxhSercice.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Set;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    public User selectByUserName(String userName) {
        return userDao.selectByUserName(userName);
    }

    public Set<String> getRoles(String userName) {
        return userDao.getRoles(userName);
    }

    public Set<String> getPermissions(String userName) {
        return userDao.getPermissions(userName);
    }
}
