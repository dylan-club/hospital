package com.nicklaus.service.impl;

import com.nicklaus.dao.*;
import com.nicklaus.pojo.*;
import com.nicklaus.service.RegistrationService;
import com.nicklaus.vo.RegistrationPageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("registrationService")
public class RegistrationServiceImpl implements RegistrationService {

    @Autowired
    private CaseHistoryMapper caseHistoryMapper;

    @Autowired
    private DepartmentMapper departmentMapper;

    @Autowired
    private DoctorMapper doctorMapper;

    @Autowired
    private RegLevelMapper regLevelMapper;

    @Autowired
    private RegistrationMapper registrationMapper;

    @Autowired
    private PaymentMapper paymentMapper;

    @Override
    public RegistrationPageBean findRegistrationPageBean() {

        RegistrationPageBean pageBean = new RegistrationPageBean();

        pageBean.setCid(caseHistoryMapper.findMaxChId()+1);

        pageBean.setPayId(paymentMapper.findMaxPayId()+1);

        pageBean.setDeptNames(departmentMapper.findDeptNames());

        pageBean.setRegLevelNames(regLevelMapper.findAll());

        return pageBean;
    }

    @Override
    public List<Doctor> findDoctors(int deptId) {
        return doctorMapper.findByDeptId(deptId);
    }

    @Override
    public RegLevel findRegPrice(int levelId) {
        return regLevelMapper.findPriceById(levelId);
    }

    @Override
    public CaseHistory findPatientById(int chId) {
        return caseHistoryMapper.findByChId(chId);
    }

    @Override
    public void doRegistration(CaseHistory caseHistory, Registration registration, Payment payment) {
        //查询是否病历已经存在
        if (caseHistoryMapper.findByChId(caseHistory.getChId())==null){
            //新建病历
            caseHistoryMapper.save(caseHistory);
        }

        //获得当前可用挂号id
        int newRegId = registrationMapper.findMaxRegId()+1;

        //设置挂号id
        registration.setRegId(newRegId);

        //设置挂号状态
        registration.setRegStatus("待诊");
        //新建挂号记录
        registrationMapper.save(registration);

        //设置开具发票的时间
        payment.setPayDate(new Date());
        //设置发票类型
        payment.setPayType("缴费发票");

        //判断是否需要病历本，有病历本要加一元
        if (registration.isRegIsPaper()){
            double row = payment.getPayTotal();
            payment.setPayTotal(row+1);
            payment.setPayReal(row+1);
            //设置发票找零
            payment.setPayBack(0.00);
        }

        //新建发票
        paymentMapper.save(payment);
    }

    @Override
    public List<Doctor> findDoctorsByOptional(Doctor doctor) {
        return doctorMapper.findByOptional(doctor);
    }
}
