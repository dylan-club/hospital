package com.nicklaus.dao;

import com.nicklaus.pojo.Patient;

import java.util.List;

public interface PatientMapper {

    List<Patient> findPatientByStatusAndDeptId(Patient patient);
}
