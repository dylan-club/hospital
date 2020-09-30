package com.nicklaus.controller;

import com.nicklaus.pojo.CaseHistory;
import com.nicklaus.pojo.Payment;
import com.nicklaus.pojo.PaymentList;
import com.nicklaus.service.PaymentService;
import com.nicklaus.vo.PaymentPageBean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/payment")
public class PaymentController {

    @Resource(name = "paymentService")
    private PaymentService paymentService;

    @RequestMapping("/searchCaseHistory")
    @ResponseBody
    public CaseHistory searchCaseHistory(int chId){
        return paymentService.findCaseHistoryByChId(chId);
    }

    @RequestMapping("/searchPaymentList")
    @ResponseBody
    public List<PaymentList> searchPaymentList(PaymentList paymentList){
        return paymentService.findPaymentListForPatient(paymentList);
    }

    @RequestMapping("/searchAvailablePayId")
    @ResponseBody
    public int searchAvailablePayId(){
        return paymentService.findAvailablePayId();
    }

    @RequestMapping("/doPaying")
    @ResponseBody
    public String doPaying(@RequestBody PaymentPageBean paymentPageBean){
        String flag;
        paymentService.savePaymentAndUpdatePaymentList(paymentPageBean);

        flag = "{\"flag\":1}";

        return flag;
    }
}
