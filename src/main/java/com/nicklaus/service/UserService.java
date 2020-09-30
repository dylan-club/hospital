package com.nicklaus.service;

import com.nicklaus.pojo.User;

public interface UserService {
    User findLoginUser(User loginUser);
}
