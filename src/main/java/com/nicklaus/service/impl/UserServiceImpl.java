package com.nicklaus.service.impl;

import com.nicklaus.dao.UserMapper;
import com.nicklaus.pojo.User;
import com.nicklaus.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public User findLoginUser(User loginUser) {
        User user = userMapper.findByUsernameAndPassword(loginUser);
        return user;
    }
}
