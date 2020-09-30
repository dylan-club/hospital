package com.nicklaus.dao;


import com.nicklaus.pojo.RegLevel;

import java.util.List;

public interface RegLevelMapper {
    RegLevel findPriceById(int levelId);

    List<RegLevel> findAll();
}
