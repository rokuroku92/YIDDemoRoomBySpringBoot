package com.yid.demoroom.repository;

import com.yid.demoroom.model.Notification;
import java.util.List;

public interface NotificationDao {
        
    List<Notification> queryTodayNotifications();
    
    List<Notification> queryNotificationsByDate(String date);
    
    List<Notification> queryAllNotifications();
    
}
