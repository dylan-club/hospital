package com.nicklaus.dao;

import com.nicklaus.pojo.Registration;

public interface RegistrationMapper {

    void save(Registration registration);

    int findMaxRegId();

    Registration findByRegId(int regId);

    void updateRegStatusById(Registration registration);
}
