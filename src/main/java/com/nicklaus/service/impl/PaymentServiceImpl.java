package com.nicklaus.service.impl;

import com.nicklaus.dao.CaseHistoryMapper;
import com.nicklaus.dao.PaymentListMapper;
import com.nicklaus.dao.PaymentMapper;
import com.nicklaus.pojo.CaseHistory;
import com.nicklaus.pojo.Payment;
import com.nicklaus.pojo.PaymentList;
import com.nicklaus.service.PaymentService;
import com.nicklaus.vo.PaymentPageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("paymentService")
public class PaymentServiceImpl implements PaymentService {

    @Autowired
    private CaseHistoryMapper caseHistoryMapper;

    @Autowired
    private PaymentListMapper paymentListMapper;

    @Autowired
    private PaymentMapper paymentMapper;

    @Override
    public CaseHistory findCaseHistoryByChId(int chId) {
        return caseHistoryMapper.findByChId(chId);
    }

    @Override
    public List<PaymentList> findPaymentListForPatient(PaymentList paymentList) {
        return paymentListMapper.findByChIdAndPayStatus(paymentList);
    }

    @Override
    public int findAvailablePayId() {
        return paymentMapper.findMaxPayId()+1;
    }

    @Override
    public void savePaymentAndUpdatePaymentList(PaymentPageBean paymentPageBean) {
        //转换发票信息
        Payment payment = new Payment();
        payment.setPayId(paymentPageBean.getPayId());
        payment.setChId(paymentPageBean.getChId());
        payment.setChName(paymentPageBean.getChName());
        payment.setPayTotal(paymentPageBean.getPayTotal());
        payment.setPayReal(paymentPageBean.getPayReal());
        payment.setPayBack(paymentPageBean.getPayBack());

        //设置发票的基本信息
        payment.setPayType("缴费发票");
        payment.setPayDate(new Date());

        //保存发票信息
        paymentMapper.save(payment);

        //更新缴费明细表的缴费状态
        List<PaymentList> paymentLists = paymentPageBean.getPaymentLists();

        for (int i = 0; i < paymentLists.size(); i++) {
            paymentLists.get(i).setPlPayStatus("已缴费");
            //逐条更新
            paymentListMapper.updatePayStatusByPlId(paymentLists.get(i));
        }
    }
}
