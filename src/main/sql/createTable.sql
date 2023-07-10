CREATE DATABASE `YIDDemoRoom`; -- 建造DATABASE

CREATE TABLE `agv`( -- 建造agv TABLE
	`id` int AUTO_INCREMENT PRIMARY KEY, -- 主鍵
    `name` varchar(20) NOT NULL, -- AGV名稱
    `memo` varchar(50) NOT NULL -- 備忘錄
);

CREATE TABLE `station`( -- 建造station TABLE
	`id` int AUTO_INCREMENT PRIMARY KEY, -- 主鍵
    `tag` int NOT NULL, -- tag
    `name` varchar(20) NOT NULL, -- 車站名稱
    `memo` varchar(50) NOT NULL -- 備忘錄
);
CREATE TABLE `mode`( -- 建造mode TABLE
	`id` int AUTO_INCREMENT PRIMARY KEY, -- 主鍵
    `mode` int NOT NULL, -- mode
    `name` varchar(20) NOT NULL, -- 模式名稱
    `memo` varchar(50) NOT NULL -- 備忘錄
);

CREATE TABLE `task_history`( -- 建造task_history TABLE
	`id` int AUTO_INCREMENT PRIMARY KEY, -- 主鍵
    `task_number` varchar(20) PRIMARY KEY, -- 任務ID
    `create_task_time` varchar(20), -- 創建時間
    `agv_id` int NOT NULL,FOREIGN KEY (`agv_id`) REFERENCES `agv`(`id`)ON DELETE CASCADE, -- agvID
    `start_id` int,FOREIGN KEY (`start_id`) REFERENCES `station`(`id`)ON DELETE CASCADE, -- 車站ID
    `terminal_id` int,FOREIGN KEY (`terminal_id`) REFERENCES `station`(`id`)ON DELETE CASCADE, -- 車站ID
    `mode_id` int NOT NULL,FOREIGN KEY (`mode_id`) REFERENCES `mode`(`id`)ON DELETE CASCADE, -- 模式ID
    `status` int NOT NULL default 0 -- 是否完成
);

CREATE TABLE `notification_history`( -- 建造notify_history TABLE
	`id` int AUTO_INCREMENT PRIMARY KEY, -- 主鍵
    `title` varchar(50) NOT NULL, -- 標題
    `content` varchar(100) NOT NULL, -- 內容
    `level` int NOT NULL, -- 通知等級
    `create_time` varchar(20) -- 創建時間
);

CREATE TABLE `analysis`( -- 建造analysis TABLE
    `analysis_id` bigint AUTO_INCREMENT PRIMARY KEY, -- 主鍵
    `agv_id` int NOT NULL,FOREIGN KEY (`agv_id`) REFERENCES `agv`(`id`)ON DELETE CASCADE,
    `year` int NOT NULL, -- 年
    `month` int NOT NULL, -- 月
    `day` int NOT NULL, -- 日
    `week` int NOT NULL, -- 星期
    `working_hours` int, -- 工作時數
    `open_hours` int, -- 開機時數
    `task` int -- 任務數
);

--CREATE TABLE `sharedata`( -- 建造sharedata TABLE
--    `id` int AUTO_INCREMENT PRIMARY KEY, -- 主鍵
--    `status` int default 0, -- 狀態
--    `memo` varchar(20)
--);
--INSERT INTO `sharedata`(`memo`) VALUES('是否要更新(iUpdate)');