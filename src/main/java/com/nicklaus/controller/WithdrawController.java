package com.nicklaus.controller;

import com.nicklaus.pojo.Registration;
import com.nicklaus.pojo.RegistrationInfo;
import com.nicklaus.service.WithdrawService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/withdraw")
public class WithdrawController {

    @Resource(name = "withdrawService")
    private WithdrawService withdrawService;

    @RequestMapping("/searchRegistrationInfo")
    @ResponseBody
    public List<RegistrationInfo> searchRegistrationInfo(int chId){
        return withdrawService.findRegistrationInfos(chId);
    }

    @RequestMapping("/doWithdrawing")
    @ResponseBody
    public String doWithdrawing(int regId){
        withdrawService.doWithdrawing(regId);
        return "{\"flag\":1}";
    }
}
