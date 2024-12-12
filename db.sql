/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xuexiziliaokuxiaochengxu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xuexiziliaokuxiaochengxu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xuexiziliaokuxiaochengxu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xuexiziliaokuxiaochengxu/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/xuexiziliaokuxiaochengxu/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/xuexiziliaokuxiaochengxu/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'ziliao_types','资料类型',1,'资料类型1',NULL,NULL,'2022-04-25 19:09:00'),(2,'ziliao_types','资料类型',2,'资料类型2',NULL,NULL,'2022-04-25 19:09:00'),(3,'ziliao_types','资料类型',3,'资料类型3',NULL,NULL,'2022-04-25 19:09:00'),(4,'ziliao_yesno_types','审核状态',1,'审核中',NULL,NULL,'2022-04-25 19:09:00'),(5,'ziliao_yesno_types','审核状态',2,'通过',NULL,NULL,'2022-04-25 19:09:00'),(6,'ziliao_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-04-25 19:09:00'),(7,'ziliao_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-25 19:09:00'),(8,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-25 19:09:00'),(9,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-25 19:09:00'),(10,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-04-25 19:09:00'),(11,'sex_types','性别',1,'男',NULL,NULL,'2022-04-25 19:09:00'),(12,'sex_types','性别',2,'女',NULL,NULL,'2022-04-25 19:09:00'),(13,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-25 19:09:00'),(14,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-25 19:09:00');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛信息';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',NULL,1,'2022-04-25 19:10:43','2022-04-25 19:10:43','2022-04-25 19:10:43'),(2,'帖子标题2',3,NULL,'发布内容2',NULL,1,'2022-04-25 19:10:43','2022-04-25 19:10:43','2022-04-25 19:10:43'),(3,'帖子标题3',2,NULL,'发布内容3',NULL,1,'2022-04-25 19:10:43','2022-04-25 19:10:43','2022-04-25 19:10:43'),(4,'帖子标题4',1,NULL,'发布内容4',NULL,1,'2022-04-25 19:10:43','2022-04-25 19:10:43','2022-04-25 19:10:43'),(5,'帖子标题5',1,NULL,'发布内容5',NULL,1,'2022-04-25 19:10:43','2022-04-25 19:10:43','2022-04-25 19:10:43'),(6,NULL,NULL,1,'33333',5,2,'2022-04-25 20:07:41',NULL,'2022-04-25 20:07:41'),(7,NULL,1,NULL,'2222222',5,2,'2022-04-25 20:33:29',NULL,'2022-04-25 20:33:29');

/*Table structure for table `guankanjilu` */

DROP TABLE IF EXISTS `guankanjilu`;

CREATE TABLE `guankanjilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ziliao_id` int(11) DEFAULT NULL COMMENT '阅读资料',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '观看时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='观看记录';

/*Data for the table `guankanjilu` */

insert  into `guankanjilu`(`id`,`ziliao_id`,`yonghu_id`,`insert_time`,`create_time`) values (9,3,1,'2022-04-25 20:33:04','2022-04-25 20:33:04'),(10,5,1,'2022-04-25 20:33:20','2022-04-25 20:33:20');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/xuexiziliaokuxiaochengxu/upload/news1.jpg','2022-04-25 19:10:43','公告详情1','2022-04-25 19:10:43'),(2,'公告标题2',3,'http://localhost:8080/xuexiziliaokuxiaochengxu/upload/news2.jpg','2022-04-25 19:10:43','公告详情2','2022-04-25 19:10:43'),(3,'公告标题3',2,'http://localhost:8080/xuexiziliaokuxiaochengxu/upload/news3.jpg','2022-04-25 19:10:43','公告详情3','2022-04-25 19:10:43'),(4,'公告标题4',3,'http://localhost:8080/xuexiziliaokuxiaochengxu/upload/news4.jpg','2022-04-25 19:10:43','公告详情4','2022-04-25 19:10:43'),(5,'公告标题5',1,'http://localhost:8080/xuexiziliaokuxiaochengxu/upload/news5.jpg','2022-04-25 19:10:43','公告详情5','2022-04-25 19:10:43');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','3j6zvgx1qemgymam1kcnn6m6t4nfom58','2022-04-25 17:47:29','2022-04-25 21:09:28'),(2,1,'a1','yonghu','用户','m60wpr9r9pxjir7vpm54bm47vcy917mu','2022-04-25 17:51:24','2022-04-25 21:14:46');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_uuid_number` varchar(255) DEFAULT NULL COMMENT '学号 Search111',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`yonghu_uuid_number`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_email`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'165088504385051','a1','123456','用户姓名1','http://localhost:8080/xuexiziliaokuxiaochengxu/upload/yonghu1.jpg',2,'17703786901','1@qq.com',1,'2022-04-25 19:10:43','2022-04-25 19:10:43'),(2,'165088504385027','a2','123456','用户姓名2','http://localhost:8080/xuexiziliaokuxiaochengxu/upload/yonghu2.jpg',1,'17703786902','2@qq.com',1,'2022-04-25 19:10:43','2022-04-25 19:10:43'),(3,'165088504385045','a3','123456','用户姓名3','http://localhost:8080/xuexiziliaokuxiaochengxu/upload/yonghu3.jpg',1,'17703786903','3@qq.com',1,'2022-04-25 19:10:43','2022-04-25 19:10:43');

/*Table structure for table `ziliao` */

DROP TABLE IF EXISTS `ziliao`;

CREATE TABLE `ziliao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `ziliao_name` varchar(200) DEFAULT NULL COMMENT '阅读资料名称  Search111 ',
  `ziliao_types` int(11) DEFAULT NULL COMMENT '资料类型 Search111',
  `ziliao_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `ziliao_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `ziliao_click_number` int(11) DEFAULT NULL COMMENT '点击次数',
  `ziliao_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `ziliao_yesno_text` text COMMENT '审核结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='阅读资料';

/*Data for the table `ziliao` */

insert  into `ziliao`(`id`,`ziliao_name`,`ziliao_types`,`ziliao_photo`,`ziliao_file`,`yonghu_id`,`ziliao_click_number`,`ziliao_yesno_types`,`ziliao_yesno_text`,`create_time`) values (1,'阅读资料名称1',1,'http://localhost:8080/xuexiziliaokuxiaochengxu/upload/1650886520925.jpeg','http://localhost:8080/xuexiziliaokuxiaochengxu/upload/file.rar',3,72,2,'123','2022-04-25 19:10:43'),(2,'阅读资料名称2',3,'http://localhost:8080/xuexiziliaokuxiaochengxu/upload/1650886502198.jpeg','http://localhost:8080/xuexiziliaokuxiaochengxu/upload/file.rar',2,136,3,'拒绝的不会在前台展示','2022-04-25 19:10:43'),(3,'阅读资料名称3',1,'http://localhost:8080/xuexiziliaokuxiaochengxu/upload/1650886495118.jpeg','http://localhost:8080/xuexiziliaokuxiaochengxu/upload/file.rar',3,331,2,'通过3','2022-04-25 19:10:43'),(4,'阅读资料名称4',2,'http://localhost:8080/xuexiziliaokuxiaochengxu/upload/1650886487790.jpeg','http://localhost:8080/xuexiziliaokuxiaochengxu/upload/file.rar',2,69,2,'通过2','2022-04-25 19:10:43'),(5,'阅读资料名称5',1,'http://localhost:8080/xuexiziliaokuxiaochengxu/upload/1650886479663.jpeg','http://localhost:8080/xuexiziliaokuxiaochengxu/upload/file.rar',1,401,2,'通过1','2022-04-25 19:10:43');

/*Table structure for table `ziliao_collection` */

DROP TABLE IF EXISTS `ziliao_collection`;

CREATE TABLE `ziliao_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ziliao_id` int(11) DEFAULT NULL COMMENT '阅读资料',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `ziliao_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='阅读资料收藏';

/*Data for the table `ziliao_collection` */

insert  into `ziliao_collection`(`id`,`ziliao_id`,`yonghu_id`,`ziliao_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2022-04-25 19:10:43','2022-04-25 19:10:43'),(2,2,3,1,'2022-04-25 19:10:43','2022-04-25 19:10:43'),(4,4,2,1,'2022-04-25 19:10:43','2022-04-25 19:10:43'),(7,3,1,1,'2022-04-25 20:15:13','2022-04-25 20:15:13');

/*Table structure for table `ziliao_liuyan` */

DROP TABLE IF EXISTS `ziliao_liuyan`;

CREATE TABLE `ziliao_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ziliao_id` int(11) DEFAULT NULL COMMENT '阅读资料',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `ziliao_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='阅读资料留言';

/*Data for the table `ziliao_liuyan` */

insert  into `ziliao_liuyan`(`id`,`ziliao_id`,`yonghu_id`,`ziliao_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2022-04-25 19:10:43','回复信息1','2022-04-25 19:10:43','2022-04-25 19:10:43'),(2,2,2,'留言内容2','2022-04-25 19:10:43','回复信息2','2022-04-25 19:10:43','2022-04-25 19:10:43'),(3,3,1,'留言内容3','2022-04-25 19:10:43','回复信息3','2022-04-25 19:10:43','2022-04-25 19:10:43'),(4,4,2,'留言内容4','2022-04-25 19:10:43','回复信息4','2022-04-25 19:10:43','2022-04-25 19:10:43'),(5,5,1,'留言内容5','2022-04-25 19:10:43','回复信息5','2022-04-25 19:10:43','2022-04-25 19:10:43');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
