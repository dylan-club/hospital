package com.nicklaus.dao;

import com.nicklaus.pojo.Disease;

import java.util.List;

public interface DiseaseMapper {

    List<Disease> findByDeptId(int deptId);
}

