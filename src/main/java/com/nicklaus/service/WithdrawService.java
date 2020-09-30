package com.nicklaus.service;

import com.nicklaus.pojo.RegistrationInfo;

import java.util.List;

public interface WithdrawService {
    List<RegistrationInfo> findRegistrationInfos(int chId);

    void doWithdrawing(int regId);
}
