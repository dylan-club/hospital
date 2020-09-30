package com.nicklaus.service;

import com.nicklaus.pojo.*;

import java.util.List;

public interface DiagnosisService {
    List<Patient> findPatients(Patient patient);

    Registration findPatientByRegId(int regId);

    List<Disease> findDeptDiseases(int deptId);

    boolean writeDiagnosis(User user, Registration diagnosingPatient, Diagnosis diagnosis);
}
