SHOW DATABASES;
SHOW TABLES;
SHOW VARIABLES LIKE 'port';
SELECT DATABASE();
DROP TABLE `task_history`;
DROP TABLE `notification_history`;
CREATE INDEX idx_task_number ON task_history (task_number);
UPDATE `task_history` SET `status` = 100 WHERE (`task_number` = '#202306300008');

SELECT * FROM task_history WHERE DATE_FORMAT(STR_TO_DATE(create_task_time, '%Y%m%d%H%i%s'), '%Y-%m-%d') = CURDATE() ORDER BY id DESC;
SELECT * FROM task_history;
SELECT * FROM station;
SELECT * FROM mode;
SELECT * FROM notification_history WHERE DATE_FORMAT(STR_TO_DATE(create_time, '%Y%m%d%H%i%s'), '%Y-%m-%d') = CURDATE() ORDER BY id DESC;
