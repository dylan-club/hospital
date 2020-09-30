package com.nicklaus.controller;

import com.nicklaus.pojo.*;
import com.nicklaus.service.RegistrationService;
import com.nicklaus.vo.RegistrationPageBean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/registration")
public class RegistrationController {

    @Resource(name = "registrationService")
    private RegistrationService registrationService;

    @RequestMapping("/init")
    @ResponseBody
    public RegistrationPageBean init(){

        RegistrationPageBean registrationPageBean = registrationService.findRegistrationPageBean();

        return registrationPageBean;
    }

    @RequestMapping("/findDoctors")
    @ResponseBody
    public List<Doctor> findDoctors(int deptId){
        return registrationService.findDoctors(deptId);
    }

    @RequestMapping("/findDoctorsWithLevel")
    @ResponseBody
    public List<Doctor> findDoctorsWithLevel(Doctor doctor){
        return registrationService.findDoctorsByOptional(doctor);
    }

    @RequestMapping("/findRegPrice")
    @ResponseBody
    public RegLevel findRegPrice(int levelId){
        return registrationService.findRegPrice(levelId);
    }

    @RequestMapping("/findPatient")
    @ResponseBody
    public CaseHistory findPatient(int chId){
        return registrationService.findPatientById(chId);
    }

    @RequestMapping(value = "/register", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String register(CaseHistory caseHistory, Registration registration, Payment payment){

        registrationService.doRegistration(caseHistory,registration,payment);

        String flag = "{\"flag\":true}";
        return flag;
    }

}
