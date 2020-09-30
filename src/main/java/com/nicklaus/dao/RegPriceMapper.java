package com.nicklaus.dao;

import com.nicklaus.pojo.RegPrice;

public interface RegPriceMapper {

    RegPrice findByRegId(int regId);
}
