package com.nicklaus.dao;

import com.nicklaus.pojo.Payment;

public interface PaymentMapper {

    void save(Payment payment);

    int findMaxPayId();
}
