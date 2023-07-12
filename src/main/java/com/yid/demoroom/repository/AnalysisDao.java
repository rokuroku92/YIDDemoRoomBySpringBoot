package com.yid.demoroom.repository;

import com.yid.demoroom.model.Analysis;
import java.util.List;
import java.util.Map;

import com.yid.demoroom.model.AnalysisId;
import com.yid.demoroom.model.YearMonthDay;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AnalysisDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    public List<Analysis> queryAnalysisesByAGV(Integer agvId){
        String sql = "select a.analysis_id, a.agv_id, a.year, a.month, a.day, a.week, a.working_hours, a.open_hours, a.task " +
                     "from analysis a where agv_id=? order by year, month, day";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Analysis.class), agvId);
    }
    
    public List<Analysis> queryAnalysisesRecentlyByAGV(Integer agvId){
        String sql = "select * from (select a.analysis_id, a.agv_id, a.year, a.month, a.day, a.week, a.working_hours, a.open_hours, a.task " +
                     "from analysis a where agv_id=? order by a.analysis_id DESC LIMIT 14)a order by analysis_id";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Analysis.class), agvId);
    }
    
    public List<Analysis> queryAnalysisesByAGVAndYearAndMonth(Integer agvId, Integer year, Integer month){
        String sql = "select a.analysis_id, a.agv_id, a.year, a.month, a.day, a.week, a.working_hours, a.open_hours, a.task " +
                     "from analysis a where agv_id=? and year=? and month=? order by day";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Analysis.class), agvId, year, month);
    }
    
    public List<Map<String, Object>> getAnalysisesYearsAndMonths(){
        String sql = "select DISTINCT a.year,a.month from analysis a order by year, month";
        return jdbcTemplate.queryForList(sql);
    }

    public boolean insertNewDayAnalysis(String agvId, String year, String month, String day, String week){
        String sql = "INSERT INTO `analysis`(`agv_id`,`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(?,?,?,?,?,0,0,0);";
        // 使用 JdbcTemplate 的 update 方法執行 SQL 語句
        int rowsAffected = jdbcTemplate.update(sql, agvId, year, month, day, week);
        return (rowsAffected > 0);
    }

    public YearMonthDay getLastAnalysisYMD(){
        String sql = "SELECT year, month, day FROM analysis WHERE (year, month, day) <= (SELECT MAX(year), MAX(month), MAX(day) FROM analysis) " +
                     "ORDER BY year DESC, month DESC, day DESC LIMIT 1;";
        return jdbcTemplate.queryForObject(sql, (rs, rowNum) -> {
            YearMonthDay ymd = new YearMonthDay();
            ymd.setYear(rs.getInt("year"));
            ymd.setMonth(rs.getInt("month"));
            ymd.setDay(rs.getInt("day"));
            return ymd;
        });
    }
    public List<AnalysisId> getTodayAnalysisId(){
        String sql = "SELECT agv_id, MAX(analysis_id) as analysis_id FROM analysis WHERE agv_id IN (1, 2, 3) GROUP BY agv_id ORDER BY agv_id";
//        return jdbcTemplate.query(sql, (rs, rowNum) -> {
//            AnalysisId a = new AnalysisId();
//            a.setAgvId(rs.getInt("agv_id"));
//            a.setAnalysisId(rs.getInt("analysis_id"));
//            return a;
//        });
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(AnalysisId.class));
    }

    public Analysis queryAnalysisesByAnalysisId(Integer analysisId){
        String sql = "SELECT * FROM analysis WHERE analysis_id = ?";
        return jdbcTemplate.queryForObject(sql, (rs, rowNum) -> {
            Analysis a = new Analysis();
            a.setAnalysisId(rs.getLong("analysis_id"));
            a.setAgvId(rs.getInt("agv_id"));
            a.setYear(rs.getInt("year"));
            a.setMonth(rs.getInt("month"));
            a.setDay(rs.getInt("day"));
            a.setWeek(rs.getInt("week"));
            a.setOpenHours(rs.getInt("open_hours"));
            a.setWorkingHours(rs.getInt("working_hours"));
            a.setTask(rs.getInt("task"));
            return a;
        }, analysisId, Analysis.class);
    }
    public boolean updateOpenHours(Integer openHours, Integer analysisId) {
        String sql = "UPDATE `analysis` SET `open_hours` = ? WHERE `analysis_id` = ?";
        // 使用 JdbcTemplate 的 update 方法執行 SQL 語句
        int rowsAffected = jdbcTemplate.update(sql, openHours, analysisId);
        return (rowsAffected > 0);
    }
}
