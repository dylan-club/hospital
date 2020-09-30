package com.nicklaus.service;

import com.nicklaus.pojo.*;
import com.nicklaus.vo.RegistrationPageBean;

import java.util.List;

public interface RegistrationService {

    RegistrationPageBean findRegistrationPageBean();

    List<Doctor> findDoctors(int deptId);

    RegLevel findRegPrice(int levelId);

    CaseHistory findPatientById(int chId);

    void doRegistration(CaseHistory caseHistory, Registration registration, Payment payment);

    List<Doctor> findDoctorsByOptional(Doctor doctor);
}
