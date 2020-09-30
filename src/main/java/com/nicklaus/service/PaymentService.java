package com.nicklaus.service;

import com.nicklaus.pojo.CaseHistory;
import com.nicklaus.pojo.PaymentList;
import com.nicklaus.vo.PaymentPageBean;

import java.util.List;

public interface PaymentService {
    CaseHistory findCaseHistoryByChId(int chId);

    List<PaymentList> findPaymentListForPatient(PaymentList paymentList);

    int findAvailablePayId();

    void savePaymentAndUpdatePaymentList(PaymentPageBean paymentPageBean);
}
