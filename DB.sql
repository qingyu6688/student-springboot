-- 创建名字为student的数据库
CREATE DATABASE `student` DEFAULT CHARACTER 
SET utf8mb4 COLLATE utf8mb4_unicode_ci

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员';
INSERT INTO `admin` VALUES (1, 'admin', '111111', 'ADMIN', 'admin');


CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '课程名称',
  `no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '课程编号',
  `descr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '课程描述',
  `times` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '课时',
  `teacher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任课老师',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='课程信息';
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (1, '软件测试', 'cs100001', '软件工程软件测试环节', '48学时', '张三');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (2, '前端框架技术', 'cs100002', 'Vue框架学习', '64学时', '李四');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (3, 'Java框架技术', 'cs100010', 'SpringBoot框架学习', '64学时', '王五');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (4, '新媒体导论', 'cs100027', '新媒体', '64学时', '周八');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (5, '数据结构', 'cs100009', 'C语言数据结构', '64课时', '马六');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (7, '软件工程原理', 'cs100002', '软件工程', '48学时', '张三');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (8, '软件需求分析与设计', 'cs100003', '软件工程', '48学时', '张三');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (9, '软件开发方法与实践', 'cs100004', '软件工程', '48学时', '张三');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (10, '软件项目管理', 'cs100051', '软件工程', '48学时', '张三');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (11, '计算机组成原理', 'cs100005', '计算机科学', '48学时', '李四');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (12, '数字电路设计', 'cs100006', '计算机科学', '48学时', '李四');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (13, '数据结构与算法', 'cs100007', '计算机科学', '48学时', '李四');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (14, '数据库系统', 'cs100008', '计算机科学', '48学时', '李四');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (15, '操作系统设计与实现', 'cs100009', '计算机科学', '48学时', '李四');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (16, '计算机网络', 'cs100010', '计算机科学', '48学时', '李四');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (17, '软件测试与质量保证', 'cs100011', '软件工程', '48学时', '王五');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (18, '项目管理与敏捷开发', 'cs100012', '软件工程', '48学时', '王五');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (19, '人工智能导论', 'cs100013', '人工智能', '48学时', '赵六');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (20, '机器学习与深度学习', 'cs100014', '人工智能', '48学时', '赵六');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (21, '自然语言处理', 'cs100015', '人工智能', '48学时', '赵六');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (22, '计算机视觉', 'cs100016', '人工智能', '48学时', '赵六');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (23, '大数据分析与处理', 'cs100017', '大数据', '48学时', '孙七');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (24, '数据挖掘与模式识别', 'cs100018', '大数据', '48学时', '孙七');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (25, '云计算与虚拟化技术', 'cs100019', '大数据', '48学时', '孙七');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (26, '网络安全与防御', 'cs100020', '网络安全', '48学时', '孙七');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (27, '软件安全与漏洞分析', 'cs100021', '网络安全', '48学时', '孙七');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (28, '电子商务与电子支付安全', 'cs100022', '网络安全', '48学时', '孙七');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (29, '人机交互与用户体验设计', 'cs100023', '人机交互', '48学时', '周八');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (30, '多媒体技术与应用', 'cs100024', '人机交互', '48学时', '周八');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (31, '游戏设计与开发', 'cs100025', '人机交互', '48学时', '周八');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (32, '产品设计与用户体验', 'cs100026', '人机交互', '48学时', '周八');
INSERT INTO `course`(`id`, `name`, `no`, `descr`, `times`, `teacher`) VALUES (33, '金融学', 'cs100100', '经济', '64学时', '孙七');

CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `course_id` int(11) DEFAULT NULL COMMENT '课程编号',
  `student_id` int(11) DEFAULT NULL COMMENT '学生id',
  `score` double(10,1) DEFAULT NULL COMMENT '分数',
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评语',
  `feedback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '反馈',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `grade`(`id`, `course_id`, `student_id`, `score`, `comment`, `feedback`) VALUES (1, 1, 1, 90.0, 'nice1', '这老师非常好，我喜欢');
INSERT INTO `grade`(`id`, `course_id`, `student_id`, `score`, `comment`, `feedback`) VALUES (3, 3, 1, 45.0, '1', NULL);

CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '学号',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生日',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `student_course`(`id`, `name`, `no`, `student_id`, `course_id`) VALUES (3, '软件测试', 'cs100001', 1, 1);
INSERT INTO `student_course`(`id`, `name`, `no`, `student_id`, `course_id`) VALUES (4, 'Java框架技术', 'cs100010', 1, 3);
INSERT INTO `student_course`(`id`, `name`, `no`, `student_id`, `course_id`) VALUES (5, '数据结构', 'cs100009', 1, 5);
INSERT INTO `student_course`(`id`, `name`, `no`, `student_id`, `course_id`) VALUES (9, '软件测试', 'cs100001', 17, 1);
INSERT INTO `student_course`(`id`, `name`, `no`, `student_id`, `course_id`) VALUES (10, '前端框架技术', 'cs100002', 17, 2);
INSERT INTO `student_course`(`id`, `name`, `no`, `student_id`, `course_id`) VALUES (11, 'Java框架技术', 'cs100010', 17, 3);


CREATE TABLE `student_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '课程名称',
  `no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '课程编号',
  `student_id` int(11) DEFAULT NULL COMMENT '学生ID',
  `course_id` int(11) DEFAULT NULL COMMENT '课程ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='学生选课';
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (1, '20403030101', '111111', 'lt', '13800138000', 'zhangsan@gmail.com', '男', '2001-01-01', 'http://localhost:9090/files/download?fileName=1701680772037man.jpg', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (2, '20403030102', '111111', '李四', '13800138001', 'lisi@gmail.com', '女', '2001-02-01', '', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (3, '20403030103', '111111', '王五', '13800138002', 'wangwu@gmail.com', '男', '2001-03-01', '', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (4, '20403030104', '111111', '赵六', '13800138003', 'zhaoliu@gmail.com', '女', '2001-04-01', '', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (5, '20403030105', '111111', '孙七', '13800138004', 'sunqi@gmail.com', '男', '2001-05-01', '', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (6, '20403030106', '111111', '周八', '13800138005', 'zhouba@gmail.com', '女', '2001-06-01', '', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (7, '20403030107', '111111', '吴九', '13800138006', 'wujiu@gmail.com', '男', '2001-07-01', '', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (8, '20403030108', '111111', '郑十', '13800138007', 'zhenshi@gmail.com', '女', '2001-08-01', '', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (9, '20403030109', '111111', '张十一', '13800138008', 'zhangshiyi@gmail.com', '男', '2001-09-01', '', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (10, '20403030110', '111111', '李十二', '13800138009', 'lishier@gmail.com', '女', '2001-10-01', '', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (11, '20403030111', '111111', '王十三', '13800138010', 'wangshisan@gmail.com', '男', '2001-11-01', '', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (12, '20403030112', '111111', '赵十四', '13800138011', 'zhaoshisi@gmail.com', '女', '2001-12-01', '', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (13, '20403030113', '111111', '孙十五', '13800138012', 'sunshiwu@gmail.com', '男', '2002-01-01', '', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (14, '20403030114', '111111', '周十六', '13800138013', 'zhoushiliu@gmail.com', '女', '2002-02-01', '', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (15, '20403030115', '111111', '吴十七', '13800138014', 'wushiqi@gmail.com', '男', '2002-03-01', '', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (16, '20403030116', '111111', '郑十八', '13800138015', 'zhenshiba@gmail.com', '女', '2002-04-01', '', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (17, '20403030301', '111111', 'ycm', '18571130336', 'ycm@gmail.com', '女', '2002-07-12', 'http://localhost:9090/files/download?fileName=1701617100617man.jpg', 'STUDENT');
INSERT INTO `student`(`id`, `username`, `password`, `name`, `phone`, `email`, `sex`, `birth`, `avatar`, `role`) VALUES (19, '20403030331', '111111', 'mm', '15377542985', 'mm@gmail.com', '男', '2001-02-18', 'http://localhost:9090/files/download?fileName=1701610602386admin.jpg', 'STUDENT');

