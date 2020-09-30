package com.nicklaus.dao;

import com.nicklaus.pojo.PaymentList;

import java.util.List;

public interface PaymentListMapper {

    void save(PaymentList paymentList);

    List<PaymentList> findByChIdAndPayStatus(PaymentList paymentList);

    void updatePayStatusByPlId(PaymentList paymentList);
}
