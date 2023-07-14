package com.yid.demoroom.repository;

import com.yid.demoroom.model.Analysis;
import java.util.List;
import java.util.Map;

import com.yid.demoroom.model.AnalysisId;
import com.yid.demoroom.model.YearMonthDay;

public interface AnalysisDao {
    
    List<Analysis> queryAnalysisesByAGV(Integer agvId);
    
    List<Analysis> queryAnalysisesRecentlyByAGV(Integer agvId);
    
    List<Analysis> queryAnalysisesByAGVAndYearAndMonth(Integer agvId, Integer year, Integer month);
    
    List<Map<String, Object>> getAnalysisesYearsAndMonths();

    void insertNewDayAnalysis(String agvId, String year, String month, String day, String week);

    YearMonthDay getLastAnalysisYMD();

    List<AnalysisId> getTodayAnalysisId();

    Analysis queryAnalysisesByAnalysisId(Integer analysisId);
    void updateOpenMinute(Integer openMinute, Integer analysisId);
    void updateWorkingMinute(Integer workingMinute, Integer analysisId);
}
