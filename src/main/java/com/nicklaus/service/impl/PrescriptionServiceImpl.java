package com.nicklaus.service.impl;

import com.nicklaus.dao.*;
import com.nicklaus.pojo.*;
import com.nicklaus.service.PrescriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("prescriptionService")
public class PrescriptionServiceImpl implements PrescriptionService {

    @Autowired
    private TemplateMapper templateMapper;

    @Autowired
    private TemplateListMapper templateListMapper;

    @Autowired
    private RecipeMapper recipeMapper;

    @Autowired
    private CaseHistoryMapper caseHistoryMapper;

    @Autowired
    private PaymentListMapper paymentListMapper;

    @Override
    public List<Template> findTemplateByDeptId(int deptId) {
        return templateMapper.findByDeptId(deptId);
    }

    @Override
    public List<TemplateList> findTemplateListByTemId(int temId) {
        return templateListMapper.findByTemId(temId);
    }

    @Override
    public void doPrescription(Registration diagnosingPatient, User doctor, List<Template> templates) {

        //设置处方的公共信息
        Recipe recipe = new Recipe();
        recipe.setChId(diagnosingPatient.getChId());
        recipe.setRegId(diagnosingPatient.getRegId());
        recipe.setDocId(doctor.getDoctorId());
        recipe.setRecDate(new Date());
        recipe.setRecPayStatus("已开立");

        //设置缴费明细的功能信息
        PaymentList paymentList = new PaymentList();
        paymentList.setChId(diagnosingPatient.getChId());
        paymentList.setChName(caseHistoryMapper.findByChId(diagnosingPatient.getChId()).getChName());
        paymentList.setPlPayStatus("已开立");
        paymentList.setPlDate(recipe.getRecDate());

        templates.forEach(template -> {
            //保存处方信息
            recipe.setTemId(template.getTemId());
            recipe.setTemName(template.getTemName());
            recipeMapper.save(recipe);
            //保存缴费信息
            List<TemplateList> templateLists = templateListMapper.findByTemId(template.getTemId());
            templateLists.forEach(templateList -> {
                paymentList.setPlName(templateList.getMdName());
                paymentList.setPlAmount(templateList.getTlAmount());
                paymentList.setPlPrice(templateList.getTlPrice());
                paymentListMapper.save(paymentList);
            });
        });

    }
}
