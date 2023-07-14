
package com.yid.demoroom.repository.impls;

import com.yid.demoroom.model.Mode;
import com.yid.demoroom.repository.ModeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ModeDaoImpl implements ModeDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Override
    public List<Mode> queryModes(){
        String sql = "SELECT * FROM `mode`";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Mode.class));
    }
}
