package com.nicklaus.service.impl;

import com.nicklaus.dao.DiagnosisMapper;
import com.nicklaus.dao.DiseaseMapper;
import com.nicklaus.dao.PatientMapper;
import com.nicklaus.dao.RegistrationMapper;
import com.nicklaus.pojo.*;
import com.nicklaus.service.DiagnosisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("diagnosisService")
public class DiagnosisServiceImpl implements DiagnosisService {

    @Autowired
    private PatientMapper patientMapper;

    @Autowired
    private RegistrationMapper registrationMapper;

    @Autowired
    private DiseaseMapper diseaseMapper;

    @Autowired
    private DiagnosisMapper diagnosisMapper;

    @Override
    public List<Patient> findPatients(Patient patient) {
        return patientMapper.findPatientByStatusAndDeptId(patient);
    }

    @Override
    public Registration findPatientByRegId(int regId) {
        return registrationMapper.findByRegId(regId);
    }

    @Override
    public List<Disease> findDeptDiseases(int deptId) {
        return diseaseMapper.findByDeptId(deptId);
    }

    @Override
    public boolean writeDiagnosis(User user, Registration diagnosingPatient, Diagnosis diagnosis) {

        //该患者已诊断
        if ("已诊".equals(diagnosingPatient.getRegStatus())){
            return false;
        }

        //设置诊断书的病历号，挂号id和医生id
        diagnosis.setChId(diagnosingPatient.getChId());
        diagnosis.setRegId(diagnosingPatient.getRegId());
        diagnosis.setDocId(user.getDoctorId());

        //将诊断书保存到数据库中
        diagnosisMapper.save(diagnosis);

        //更新患者的挂号状态
        diagnosingPatient.setRegStatus("已诊");
        registrationMapper.updateRegStatusById(diagnosingPatient);

        return true;
    }
}
