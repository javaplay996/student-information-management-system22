/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xueshengxinxiguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xueshengxinxiguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xueshengxinxiguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-05 10:50:49'),(2,'sex_types','性别',2,'女',NULL,'2021-04-05 10:50:49'),(3,'jiaofei_types','缴费类型名称',1,'学费缴费',NULL,'2021-04-05 10:50:49'),(4,'jiaofei_types','缴费类型名称',2,'书本缴费',NULL,'2021-04-05 10:50:49'),(5,'jiaofei_types','缴费类型名称',3,'宿舍缴费',NULL,'2021-04-05 10:50:49'),(6,'shifou_types','是否缴费',1,'已缴费',NULL,'2021-04-05 10:50:49'),(7,'shifou_types','是否缴费',2,'未交费',NULL,'2021-04-05 10:50:49'),(8,'jiaofei_types','缴费类型名称',4,'团费',NULL,'2021-04-05 15:04:37');

/*Table structure for table `jiaofei` */

DROP TABLE IF EXISTS `jiaofei`;

CREATE TABLE `jiaofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `jiaofei_types` int(11) DEFAULT NULL COMMENT '缴费类型  ',
  `jiaofei_money` int(11) DEFAULT NULL COMMENT '缴费金额  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '通知时间',
  `shifou_types` int(11) DEFAULT NULL COMMENT '是否缴费  ',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '缴费时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='缴费表';

/*Data for the table `jiaofei` */

insert  into `jiaofei`(`id`,`yonghu_id`,`jiaofei_types`,`jiaofei_money`,`insert_time`,`shifou_types`,`update_time`,`create_time`) values (1,4,2,999,'2021-04-05 14:30:35',2,NULL,'2021-04-05 14:30:35'),(2,4,2,77,'2021-04-05 14:52:16',2,NULL,'2021-04-05 14:52:16'),(3,3,1,66,'2021-04-05 14:52:31',1,'2021-04-05 14:55:19','2021-04-05 14:52:31'),(4,6,2,898,'2021-04-05 15:00:43',2,NULL,'2021-04-05 15:00:43'),(5,6,4,88,'2021-04-05 15:06:17',1,'2021-04-05 15:09:08','2021-04-05 15:06:17');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '老师性别',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号   ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号  ',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`sex_types`,`laoshi_id_number`,`laoshi_phone`,`laoshi_photo`,`create_time`) values (1,'a11','123456','张11111',2,'410224199610232011','17703786922','http://localhost:8080/xueshengxinxiguanlixitong/file/download?fileName=1617601210014.jpg','2021-04-05 13:40:11');

/*Table structure for table `sushe` */

DROP TABLE IF EXISTS `sushe`;

CREATE TABLE `sushe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `building` varchar(200) DEFAULT NULL COMMENT '楼栋  ',
  `unit` varchar(200) DEFAULT NULL COMMENT '单元  ',
  `room` varchar(200) DEFAULT NULL COMMENT '房间号  ',
  `sushe_number` int(11) DEFAULT '0' COMMENT '已住人员',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='宿舍信息';

/*Data for the table `sushe` */

insert  into `sushe`(`id`,`building`,`unit`,`room`,`sushe_number`,`create_time`) values (2,'1','2','3',3,'2021-04-05 14:12:59'),(3,'1','1','898',1,'2021-04-05 15:01:22');

/*Table structure for table `sushe_yonghu` */

DROP TABLE IF EXISTS `sushe_yonghu`;

CREATE TABLE `sushe_yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='人员与宿舍关系';

/*Data for the table `sushe_yonghu` */

insert  into `sushe_yonghu`(`id`,`yonghu_id`,`sushe_id`,`create_time`) values (2,1,2,'2021-04-05 14:13:40'),(3,4,2,'2021-04-05 14:13:53'),(4,3,2,'2021-04-05 14:14:16'),(5,2,3,'2021-04-05 15:01:31');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','hr9zg32evewbekyvdir8s79xicjg2l23','2021-04-05 11:00:32','2021-04-05 16:41:07'),(2,1,'a1','yonghu','用户','5091i0vlczscbk7hml826ll4kqcv6fvl','2021-04-05 13:37:02','2021-04-05 16:52:21'),(3,1,'a11','laoshi','老师','vwqwgips0xxrlgsgxxe7pzg1orh0n92n','2021-04-05 14:51:57','2021-04-05 16:06:32'),(4,3,'a3','yonghu','用户','qizxnhay619tyn8fnp4moqwa1mjmc7go','2021-04-05 14:55:02','2021-04-05 16:52:50'),(5,6,'a55','yonghu','用户','lfwmjmsldkw4rg8ubnwp3zup6wtsqx2f','2021-04-05 15:07:27','2021-04-05 16:50:41');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_xuehao` varchar(200) DEFAULT NULL COMMENT '学号   ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '学生性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号   ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号  ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_xuehao`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'a1','123456','111','张1',1,'410224199610232011','17703786961','http://localhost:8080/xueshengxinxiguanlixitong/file/download?fileName=1617600033590.jpg','2021-04-05 13:20:34'),(2,'a2','123456','222','张2',1,'410224199610232022','17703786962','http://localhost:8080/xueshengxinxiguanlixitong/file/download?fileName=1617600062565.jpg','2021-04-05 13:21:04'),(3,'a3','123456','333','张3',2,'410224199610232013','17703786963','http://localhost:8080/xueshengxinxiguanlixitong/file/download?fileName=1617600089739.jpg','2021-04-05 13:21:35'),(4,'a4','123456','444','张4',2,'410224199610232044','17703786964','http://localhost:8080/xueshengxinxiguanlixitong/file/download?fileName=1617600406586.jpg','2021-04-05 13:26:47'),(6,'a5','123456','5555','张5',1,'410224199610232055','17703786955','http://localhost:8080/xueshengxinxiguanlixitong/file/download?fileName=1617605969458.jpg','2021-04-05 14:59:39');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
