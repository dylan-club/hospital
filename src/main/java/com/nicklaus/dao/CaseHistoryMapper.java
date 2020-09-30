package com.nicklaus.dao;

import com.nicklaus.pojo.CaseHistory;

public interface CaseHistoryMapper {

    int findMaxChId();

    CaseHistory findByChId(int chId);

    void save(CaseHistory caseHistory);
}
