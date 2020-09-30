package com.nicklaus.service;

import com.nicklaus.pojo.Registration;
import com.nicklaus.pojo.Template;
import com.nicklaus.pojo.TemplateList;
import com.nicklaus.pojo.User;

import java.util.List;

public interface PrescriptionService {
    List<Template> findTemplateByDeptId(int deptId);

    List<TemplateList> findTemplateListByTemId(int temId);

    void doPrescription(Registration diagnosingPatient, User doctor, List<Template> templates);
}
