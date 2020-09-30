package com.nicklaus.dao;

import com.nicklaus.pojo.Template;

import java.util.List;

public interface TemplateMapper {
    List<Template> findByDeptId(int deptId);
}
