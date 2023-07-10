INSERT INTO `agv`(`name`, `memo`) VALUES('AGV#1', '250公斤潛盾頂舉型');
INSERT INTO `agv`(`name`, `memo`) VALUES('AGV#2', '250公斤潛盾頂舉型');
INSERT INTO `agv`(`name`, `memo`) VALUES('AGV#3', '250公斤潛盾頂舉型');

INSERT INTO `station`(`tag`, `name`, `memo`) VALUES(1001, 'Station1', '撿料站，位於工廠最左側。');
INSERT INTO `station`(`tag`, `name`, `memo`) VALUES(1011, 'Station2', '工作站，位於工廠輸送帶末端。');
INSERT INTO `station`(`tag`, `name`, `memo`) VALUES(1021, 'Station3', 'QC，位於包裝廠。');
INSERT INTO `station`(`tag`, `name`, `memo`) VALUES(1031, 'Station4', '出貨站，位於出貨港口。');

INSERT INTO `mode`(`mode`, `name`, `memo`) VALUES(1, 'transport', '物件轉載。');
INSERT INTO `mode`(`mode`, `name`, `memo`) VALUES(1, 'call', '呼叫AGV到站。');
INSERT INTO `mode`(`mode`, `name`, `memo`) VALUES(1, 'mode3', '尚未定義。');

INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306140001', '20230614110422', 1, 1, 3, 1);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306140002', '20230614110512', 2, 2, 3, 1);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306140003', '20230614110632', 3, 3, 4, 1);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306140004', '20230614120112', 1, 4, 2, 1);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `terminal_id`, `mode_id`)
					VALUES('#202306140005', '20230614121451', 2, 3, 2);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306140006', '20230614121839', 3, 1, 3, 3);

INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306150001', '20230615110422', 1, 1, 3, 1);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306150002', '20230615110512', 2, 2, 3, 1);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306150003', '20230615110632', 3, 3, 4, 1);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306150004', '20230615120112', 1, 4, 2, 1);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `terminal_id`, `mode_id`)
					VALUES('#202306150005', '20230615121451', 2, 3, 2);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306150006', '20230615121839', 3, 1, 3, 3);

INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306180001', '20230618110422', 1, 1, 3, 1);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306180002', '20230618110512', 2, 2, 3, 1);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306180003', '20230618110632', 3, 3, 4, 1);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306180004', '20230618120112', 1, 4, 2, 1);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `terminal_id`, `mode_id`)
					VALUES('#202306180005', '20230618121451', 2, 3, 2);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306180006', '20230618121839', 3, 1, 3, 3);

INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306210001', '20230621110422', 1, 1, 3, 1);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306210002', '20230621110512', 2, 2, 3, 1);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306210003', '20230621110632', 3, 3, 4, 1);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306210004', '20230621120112', 1, 4, 2, 1);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `terminal_id`, `mode_id`)
					VALUES('#202306210005', '20230621121451', 2, 3, 2);
INSERT INTO `task_history`(`task_number`, `create_task_time`, `agv_id`, `start_id`, `terminal_id`, `mode_id`)
					VALUES('#202306210006', '20230621121839', 3, 1, 3, 3);


INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#1', 'AGV online!', 0, '20230615110422');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#2', 'AGV online!', 0, '20230615110512');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#3', 'AGV online!', 0, '20230615110632');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#1', 'AGV emergency stop!!!', 3, '20230615120112');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#2', 'AGV collided!!!', 2, '20230615121451');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#3', 'Task #202306150003 completed', 1, '20230615121839');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#1', 'AGV online!', 0, '20230620110422');

INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#1', 'AGV online!', 0, '20230621110422');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#2', 'AGV online!', 0, '20230621110512');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#3', 'AGV online!', 0, '20230621110632');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#1', 'AGV emergency stop!!!', 3, '20230621120112');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#2', 'AGV collided!!!', 2, '20230621121451');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#3', 'Task #202306210003 completed', 1, '20230621121839');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#1', 'AGV online!', 0, '20230626110422');

INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#1', 'AGV online!', 0, '20230627110422');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#2', 'AGV online!', 0, '20230627110512');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#3', 'AGV online!', 0, '20230627110632');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#1', 'AGV emergency stop!!!', 3, '20230627120112');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#2', 'AGV collided!!!', 2, '20230627121451');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#3', 'Task #202306210003 completed', 1, '20230627121839');
INSERT INTO `notification_history`(`title`, `content`, `level`, `create_time`) VALUES('AGV#1', 'AGV online!', 0, '20230628110422');
