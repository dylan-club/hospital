package com.nicklaus.controller;

import com.nicklaus.pojo.Registration;
import com.nicklaus.pojo.Template;
import com.nicklaus.pojo.TemplateList;
import com.nicklaus.pojo.User;
import com.nicklaus.service.PrescriptionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/prescription")
public class PrescriptionController {

    @Resource(name = "prescriptionService")
    private PrescriptionService prescriptionService;

    @RequestMapping("/getTemplate")
    @ResponseBody
    public List<Template> getTemplate(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("loginUser");
        return prescriptionService.findTemplateByDeptId(user.getDeptId());
    }

    @RequestMapping("/getTemplateList")
    @ResponseBody
    public List<TemplateList> getTemplateList(int temId){
        return prescriptionService.findTemplateListByTemId(temId);
    }

    @RequestMapping("/doPrescribing")
    @ResponseBody
    public String doPrescribing(@RequestBody List<Template> templates,HttpServletRequest request){

        String flag;

        HttpSession session = request.getSession();

        Registration diagnosingPatient = (Registration)session.getAttribute("diagnosingPatient");

        //如果当前没有患者正在诊断或者患者还未开具诊断书
        if (diagnosingPatient==null || (!"已诊".equals(diagnosingPatient.getRegStatus()))){
            flag = "{\"flag\":1}";
        }else{
            //医生开药
            User user = (User)session.getAttribute("loginUser");
            prescriptionService.doPrescription(diagnosingPatient,user,templates);
            flag = "{\"flag\":2}";
        }

        return flag;
    }
}
