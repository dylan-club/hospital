package com.nicklaus.dao;

import com.nicklaus.pojo.Department;

import java.util.List;

public interface DepartmentMapper {

    List<Department> findDeptNames();
}
