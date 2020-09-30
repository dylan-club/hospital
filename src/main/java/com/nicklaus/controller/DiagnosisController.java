package com.nicklaus.controller;

import com.nicklaus.pojo.*;
import com.nicklaus.service.DiagnosisService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/diagnosis")
public class DiagnosisController {

    @Resource(name = "diagnosisService")
    private DiagnosisService diagnosisService;

    @RequestMapping("/getPatients")
    @ResponseBody
    public List<Patient> getUnRegPatients(HttpServletRequest request, String regStatus){

        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("loginUser");

        Patient patient = new Patient();
        patient.setDeptId(user.getDeptId());
        patient.setDocId(user.getDoctorId());
        patient.setRegStatus(regStatus);

        return diagnosisService.findPatients(patient);
    }

    @RequestMapping(value = "/startDiagnosing" ,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String startDiagnosing(int regId,HttpServletRequest request){
        HttpSession session = request.getSession();
        Registration patient = (Registration)session.getAttribute("diagnosingPatient");
        //开始诊断是否成功的标志
        String flag;
        //当前没有患者在诊断，将该患者存入session域中
        if (patient == null){
            Registration registration = diagnosisService.findPatientByRegId(regId);
            session.setAttribute("diagnosingPatient",registration);
            flag = "{\"flag\":true}";
        }else {
            flag = "{\"flag\":false}";
        }
        return flag;
    }

    @RequestMapping(value = "/initDiseases")
    @ResponseBody
    public List<Disease> initDiseases(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("loginUser");
        return diagnosisService.findDeptDiseases(user.getDeptId());
    }

    @RequestMapping(value = "/doDiagnosing",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String doDiagnosing(Diagnosis diagnosis, HttpServletRequest request){
        HttpSession session = request.getSession();
        Registration diagnosingPatient = (Registration)session.getAttribute("diagnosingPatient");

        String flag;

        //判断是否存在患者正在诊断
        if (diagnosingPatient!=null){
            User user = (User)session.getAttribute("loginUser");
            boolean isWrite = diagnosisService.writeDiagnosis(user,diagnosingPatient,diagnosis);
            if (isWrite){
                //更新session域中的患者信息
                Registration newPatient = diagnosisService.findPatientByRegId(diagnosingPatient.getRegId());
                session.setAttribute("diagnosingPatient",newPatient);
                //添加成功，患者诊断书已保存
                flag = "{\"flag\":3}";
            }else{
                //添加失败，患者已诊断
                flag = "{\"flag\":2}";
            }
        }else{

            //添加失败，未选择患者
            flag = "{\"flag\":1}";
        }

        return flag;
    }

    @RequestMapping(value = "/removeDiagnosingPatient",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String removeDiagnosingPatient(HttpServletRequest request){

        String flag;

        HttpSession session = request.getSession();
        Registration diagnosingPatient = (Registration)session.getAttribute("diagnosingPatient");
        //如果当前不存在患者
        if (diagnosingPatient == null){
            flag = "{\"flag\":1}";
        }else{
            //如果该患者未诊断，无法诊毕
            if ("待诊".equals(diagnosingPatient.getRegStatus())){
                flag = "{\"flag\":2}";
            }else{
                session.removeAttribute("diagnosingPatient");
                flag = flag = "{\"flag\":3}";
            }
        }
        return flag;
    }
}
