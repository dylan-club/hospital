package com.nicklaus.dao;

import com.nicklaus.pojo.User;

public interface UserMapper {

    public User findByUsernameAndPassword(User user);
}
