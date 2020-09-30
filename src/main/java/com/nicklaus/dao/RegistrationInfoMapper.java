package com.nicklaus.dao;

import com.nicklaus.pojo.RegistrationInfo;

import java.util.List;

public interface RegistrationInfoMapper {

    List<RegistrationInfo> findInfoByChId(int chId);
}
