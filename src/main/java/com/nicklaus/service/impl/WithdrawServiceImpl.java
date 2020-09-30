package com.nicklaus.service.impl;

import com.nicklaus.dao.PaymentMapper;
import com.nicklaus.dao.RegPriceMapper;
import com.nicklaus.dao.RegistrationInfoMapper;
import com.nicklaus.dao.RegistrationMapper;
import com.nicklaus.pojo.Payment;
import com.nicklaus.pojo.RegPrice;
import com.nicklaus.pojo.Registration;
import com.nicklaus.pojo.RegistrationInfo;
import com.nicklaus.service.WithdrawService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("withdrawService")
public class WithdrawServiceImpl implements WithdrawService {

    @Autowired
    private RegistrationInfoMapper registrationInfoMapper;

    @Autowired
    private RegistrationMapper registrationMapper;

    @Autowired
    private RegPriceMapper regPriceMapper;

    @Autowired
    private PaymentMapper paymentMapper;

    @Override
    public List<RegistrationInfo> findRegistrationInfos(int chId) {
        return registrationInfoMapper.findInfoByChId(chId);
    }

    @Override
    public void doWithdrawing(int regId) {

        //更新挂号状态
        Registration updateRegistration = new Registration();
        updateRegistration.setRegStatus("已退号");
        updateRegistration.setRegId(regId);
        registrationMapper.updateRegStatusById(updateRegistration);

        //开具冲正发票
        RegPrice regPrice = regPriceMapper.findByRegId(regId);
        Payment backPayment = new Payment();
        backPayment.setPayId(paymentMapper.findMaxPayId()+1);
        backPayment.setChId(regPrice.getChId());
        backPayment.setChName(regPrice.getChName());
        backPayment.setPayTotal(-regPrice.getLevelPrice());
        backPayment.setPayReal(0);
        backPayment.setPayBack(regPrice.getLevelPrice());
        backPayment.setPayType("冲正发票");
        backPayment.setPayDate(new Date());

        //保存冲正发票
        paymentMapper.save(backPayment);

    }
}
