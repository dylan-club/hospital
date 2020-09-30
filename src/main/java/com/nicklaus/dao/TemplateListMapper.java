package com.nicklaus.dao;

import com.nicklaus.pojo.TemplateList;

import java.util.List;

public interface TemplateListMapper {
    List<TemplateList> findByTemId(int temId);
}
