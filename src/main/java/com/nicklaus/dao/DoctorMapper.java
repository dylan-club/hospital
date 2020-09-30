package com.nicklaus.dao;

import com.nicklaus.pojo.Doctor;

import java.util.List;

public interface DoctorMapper {
    List<Doctor> findByDeptId(int deptId);

    List<Doctor> findByOptional(Doctor doctor);
}
