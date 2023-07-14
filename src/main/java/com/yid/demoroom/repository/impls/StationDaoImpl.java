
package com.yid.demoroom.repository.impls;

import com.yid.demoroom.model.Station;
import com.yid.demoroom.repository.StationDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class StationDaoImpl implements StationDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Override
    public List<Station> queryStations(){
        String sql = "SELECT * FROM station";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Station.class));
    }
}
