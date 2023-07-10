package com.yid.demoroom.service;

import com.yid.demoroom.model.AGVId;
import com.yid.demoroom.model.Mode;
import com.yid.demoroom.model.Notification;
import com.yid.demoroom.model.Station;
import com.yid.demoroom.model.Task;
import com.yid.demoroom.repository.AGVIdDao;
import com.yid.demoroom.repository.ModeDao;
import com.yid.demoroom.repository.NotificationDao;
import com.yid.demoroom.repository.StationDao;
import com.yid.demoroom.repository.TaskDao;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HomePageService {
    
    @Autowired
    private AGVIdDao agvIdDao;
    
    @Autowired
    private TaskDao taskDao;
    
    @Autowired
    private NotificationDao notificationDao;
    
    @Autowired
    private StationDao StationDao;
    
    @Autowired
    private ModeDao modeDao;
    
    public List<AGVId> queryAGVList(){
        return agvIdDao.queryAGVList();
    }
    
    public List<Task> queryTodayTasks(){
        return taskDao.queryTodayTasks();
    }
    
    public List<Task> queryTasksByDate(String date){
        return taskDao.queryTasksByDate(date);
    }
    
    public List<Task> queryAllTasks(){
        return taskDao.queryAllTasks();
    }
    
    public boolean updateTaskStatus(String taskNumber, int status){
        return taskDao.updateTaskStatus(taskNumber, status);
    }
    
    public List<Notification> queryTodayNotifications(){
        return notificationDao.queryTodayNotifications();
    }
    
    public List<Notification> queryNotificationsByDate(String date){
        return notificationDao.queryNotificationsByDate(date);
    }
    
    public List<Notification> queryAllNotifications(){
        return notificationDao.queryAllNotifications();
    }
    
    public List<Station> queryStations(){
        return StationDao.queryStations();
    }
    
    public boolean cancelTask(String taskNumber){
        return taskDao.cancelTask(taskNumber);
    }
    
    public List<Mode> queryModes(){
        return modeDao.queryModes();
    }
    
    
}
