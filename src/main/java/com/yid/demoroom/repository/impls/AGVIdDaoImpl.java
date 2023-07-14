
package com.yid.demoroom.repository.impls;

import com.yid.demoroom.model.AGVId;
import com.yid.demoroom.repository.AGVIdDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
    
@Repository
public class AGVIdDaoImpl implements AGVIdDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Override
    public List<AGVId> queryAGVList(){
        String sql = "SELECT * FROM agv";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(AGVId.class));
    }
    
}
