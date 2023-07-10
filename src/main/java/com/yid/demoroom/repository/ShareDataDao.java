
package com.yid.demoroom.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ShareDataDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    public Integer queryIUpdate(){
        String sql = "SELECT `status` FROM `sharedata` WHERE (`id` = 1)";
        return jdbcTemplate.queryForObject(sql, Integer.class);
    }
    
    public boolean updateIUpdate(Integer status){
        String sql = "UPDATE `sharedata` SET `status` = ? WHERE (`id` = 1)";
        int rowsAffected = jdbcTemplate.update(sql, status);
        return (rowsAffected > 0);
    }
    
}
