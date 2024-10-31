/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jspmen24b
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jspmen24b` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jspmen24b`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmen24b/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmen24b/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmen24b/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `fuwuleixing` */

DROP TABLE IF EXISTS `fuwuleixing`;

CREATE TABLE `fuwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='服务类型';

/*Data for the table `fuwuleixing` */

insert  into `fuwuleixing`(`id`,`addtime`,`fuwuleixing`) values (21,'2021-02-23 10:17:10','xxx类型'),(22,'2021-02-23 10:17:10','服务类型2'),(23,'2021-02-23 10:17:10','服务类型3'),(24,'2021-02-23 10:17:10','服务类型4'),(25,'2021-02-23 10:17:10','服务类型5'),(26,'2021-02-23 10:17:10','服务类型6');

/*Table structure for table `jiazhengfuwu` */

DROP TABLE IF EXISTS `jiazhengfuwu`;

CREATE TABLE `jiazhengfuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiazhengxingming` varchar(200) DEFAULT NULL COMMENT '家政姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  `jiazhengleixing` varchar(200) DEFAULT NULL COMMENT '家政类型',
  `fuwufeiyong` int(11) NOT NULL COMMENT '服务费用',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongzuonianshu` int(11) DEFAULT NULL COMMENT '工作年数',
  `jiazhengtupian` varchar(200) DEFAULT NULL COMMENT '家政图片',
  `gerenjianjie` varchar(200) DEFAULT NULL COMMENT '个人简介',
  `gongzuoneirong` longtext COMMENT '工作内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='家政服务';

/*Data for the table `jiazhengfuwu` */

insert  into `jiazhengfuwu`(`id`,`addtime`,`jiazhengxingming`,`xingbie`,`nianling`,`fuwuleixing`,`jiazhengleixing`,`fuwufeiyong`,`lianxifangshi`,`gongzuonianshu`,`jiazhengtupian`,`gerenjianjie`,`gongzuoneirong`) values (61,'2021-02-23 10:17:10','家政姓名1','男',1,'服务类型1','家政类型1',1,'联系方式1',1,'http://localhost:8080/jspmen24b/upload/jiazhengfuwu_jiazhengtupian1.jpg','个人简介1','工作内容1'),(62,'2021-02-23 10:17:10','家政姓名2','男',2,'服务类型2','家政类型2',2,'联系方式2',2,'http://localhost:8080/jspmen24b/upload/jiazhengfuwu_jiazhengtupian2.jpg','个人简介2','工作内容2'),(63,'2021-02-23 10:17:10','家政姓名3','男',3,'服务类型3','家政类型3',3,'联系方式3',3,'http://localhost:8080/jspmen24b/upload/jiazhengfuwu_jiazhengtupian3.jpg','个人简介3','工作内容3'),(64,'2021-02-23 10:17:10','家政姓名4','男',4,'服务类型4','家政类型4',4,'联系方式4',4,'http://localhost:8080/jspmen24b/upload/jiazhengfuwu_jiazhengtupian4.jpg','个人简介4','工作内容4'),(65,'2021-02-23 10:17:10','家政姓名5','男',5,'服务类型5','家政类型5',5,'联系方式5',5,'http://localhost:8080/jspmen24b/upload/jiazhengfuwu_jiazhengtupian5.jpg','个人简介5','工作内容5'),(66,'2021-02-23 10:17:10','家政姓名6','男',6,'服务类型6','家政类型6',6,'联系方式6',6,'http://localhost:8080/jspmen24b/upload/jiazhengfuwu_jiazhengtupian6.jpg','个人简介6','工作内容6');

/*Table structure for table `jiazhengleixing` */

DROP TABLE IF EXISTS `jiazhengleixing`;

CREATE TABLE `jiazhengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiazhengleixing` varchar(200) DEFAULT NULL COMMENT '家政类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='家政类型';

/*Data for the table `jiazhengleixing` */

insert  into `jiazhengleixing`(`id`,`addtime`,`jiazhengleixing`) values (31,'2021-02-23 10:17:10','家政类型1'),(32,'2021-02-23 10:17:10','家政类型2'),(33,'2021-02-23 10:17:10','家政类型3'),(34,'2021-02-23 10:17:10','家政类型4'),(35,'2021-02-23 10:17:10','家政类型5'),(36,'2021-02-23 10:17:10','家政类型6');

/*Table structure for table `jiazhengpingjia` */

DROP TABLE IF EXISTS `jiazhengpingjia`;

CREATE TABLE `jiazhengpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `jiazhengxingming` varchar(200) DEFAULT NULL COMMENT '家政姓名',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `manyidu` varchar(200) DEFAULT NULL COMMENT '满意度',
  `pingjianeirong` varchar(200) DEFAULT NULL COMMENT '评价内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614047547704 DEFAULT CHARSET=utf8 COMMENT='家政评价';

/*Data for the table `jiazhengpingjia` */

insert  into `jiazhengpingjia`(`id`,`addtime`,`yuyuebianhao`,`jiazhengxingming`,`fuwuleixing`,`yonghuming`,`yonghuxingming`,`yonghushouji`,`manyidu`,`pingjianeirong`) values (41,'2021-02-23 10:17:10','预约编号1','家政姓名1','服务类型1','用户名1','用户姓名1','用户手机1','满意','评价内容1'),(42,'2021-02-23 10:17:10','预约编号2','家政姓名2','服务类型2','用户名2','用户姓名2','用户手机2','满意','评价内容2'),(43,'2021-02-23 10:17:10','预约编号3','家政姓名3','服务类型3','用户名3','用户姓名3','用户手机3','满意','评价内容3'),(44,'2021-02-23 10:17:10','预约编号4','家政姓名4','服务类型4','用户名4','用户姓名4','用户手机4','满意','评价内容4'),(45,'2021-02-23 10:17:10','预约编号5','家政姓名5','服务类型5','用户名5','用户姓名5','用户手机5','满意','评价内容5'),(46,'2021-02-23 10:17:10','预约编号6','家政姓名6','服务类型6','用户名6','用户姓名6','用户手机6','满意','评价内容6'),(1614047547703,'2021-02-23 10:32:26','20212231030262942043','家政姓名5','服务类型5','1','xxx用户','13811111111','满意','服务很好');

/*Table structure for table `jiazhengyuyue` */

DROP TABLE IF EXISTS `jiazhengyuyue`;

CREATE TABLE `jiazhengyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `jiazhengxingming` varchar(200) DEFAULT NULL COMMENT '家政姓名',
  `jiazhengtupian` varchar(200) DEFAULT NULL COMMENT '家政图片',
  `fuwufeiyong` varchar(200) DEFAULT NULL COMMENT '服务费用',
  `fuwuleixing` varchar(200) DEFAULT NULL COMMENT '服务类型',
  `jiazhengleixing` varchar(200) DEFAULT NULL COMMENT '家政类型',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `dizhi` varchar(200) NOT NULL COMMENT '地址',
  `yuyueshijian` date DEFAULT NULL COMMENT '预约时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614047437761 DEFAULT CHARSET=utf8 COMMENT='家政预约';

/*Data for the table `jiazhengyuyue` */

insert  into `jiazhengyuyue`(`id`,`addtime`,`yuyuebianhao`,`jiazhengxingming`,`jiazhengtupian`,`fuwufeiyong`,`fuwuleixing`,`jiazhengleixing`,`yonghuming`,`yonghuxingming`,`yonghushouji`,`dizhi`,`yuyueshijian`,`sfsh`,`shhf`,`ispay`) values (71,'2021-02-23 10:17:10','预约编号1','家政姓名1','http://localhost:8080/jspmen24b/upload/jiazhengyuyue_jiazhengtupian1.jpg','服务费用1','服务类型1','家政类型1','用户名1','用户姓名1','用户手机1','地址1','2021-02-23','是','','未支付'),(72,'2021-02-23 10:17:10','预约编号2','家政姓名2','http://localhost:8080/jspmen24b/upload/jiazhengyuyue_jiazhengtupian2.jpg','服务费用2','服务类型2','家政类型2','用户名2','用户姓名2','用户手机2','地址2','2021-02-23','是','','未支付'),(73,'2021-02-23 10:17:10','预约编号3','家政姓名3','http://localhost:8080/jspmen24b/upload/jiazhengyuyue_jiazhengtupian3.jpg','服务费用3','服务类型3','家政类型3','用户名3','用户姓名3','用户手机3','地址3','2021-02-23','是','','未支付'),(74,'2021-02-23 10:17:10','预约编号4','家政姓名4','http://localhost:8080/jspmen24b/upload/jiazhengyuyue_jiazhengtupian4.jpg','服务费用4','服务类型4','家政类型4','用户名4','用户姓名4','用户手机4','地址4','2021-02-23','是','','未支付'),(75,'2021-02-23 10:17:10','预约编号5','家政姓名5','http://localhost:8080/jspmen24b/upload/jiazhengyuyue_jiazhengtupian5.jpg','服务费用5','服务类型5','家政类型5','用户名5','用户姓名5','用户手机5','地址5','2021-02-23','是','','未支付'),(76,'2021-02-23 10:17:10','预约编号6','家政姓名6','http://localhost:8080/jspmen24b/upload/jiazhengyuyue_jiazhengtupian6.jpg','服务费用6','服务类型6','家政类型6','用户名6','用户姓名6','用户手机6','地址6','2021-02-23','是','','未支付'),(1614047437760,'2021-02-23 10:30:37','20212231030262942043','家政姓名5','http://localhost:8080/jspmen24b/upload/jiazhengfuwu_jiazhengtupian5.jpg','5','服务类型5','家政类型5','1','xxx用户','13811111111','xxxxx栋xxx房','2021-02-26','是','好的，马上安排','已支付');

/*Table structure for table `jiazhengzixun` */

DROP TABLE IF EXISTS `jiazhengzixun`;

CREATE TABLE `jiazhengzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunbiaoti` varchar(200) DEFAULT NULL COMMENT '资讯标题',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fabuzhe` varchar(200) DEFAULT NULL COMMENT '发布者',
  `laiyuan` varchar(200) DEFAULT NULL COMMENT '来源',
  `zixunleixing` varchar(200) DEFAULT NULL COMMENT '资讯类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614047326094 DEFAULT CHARSET=utf8 COMMENT='家政资讯';

/*Data for the table `jiazhengzixun` */

insert  into `jiazhengzixun`(`id`,`addtime`,`zixunbiaoti`,`fengmiantupian`,`neirong`,`fabushijian`,`fabuzhe`,`laiyuan`,`zixunleixing`) values (51,'2021-02-23 10:17:10','资讯标题1','http://localhost:8080/jspmen24b/upload/jiazhengzixun_fengmiantupian1.jpg','内容1','2021-02-23','发布者1','来源1','资讯类型1'),(52,'2021-02-23 10:17:10','资讯标题2','http://localhost:8080/jspmen24b/upload/jiazhengzixun_fengmiantupian2.jpg','内容2','2021-02-23','发布者2','来源2','资讯类型2'),(53,'2021-02-23 10:17:10','资讯标题3','http://localhost:8080/jspmen24b/upload/jiazhengzixun_fengmiantupian3.jpg','内容3','2021-02-23','发布者3','来源3','资讯类型3'),(54,'2021-02-23 10:17:10','资讯标题4','http://localhost:8080/jspmen24b/upload/jiazhengzixun_fengmiantupian4.jpg','内容4','2021-02-23','发布者4','来源4','资讯类型4'),(55,'2021-02-23 10:17:10','资讯标题5','http://localhost:8080/jspmen24b/upload/jiazhengzixun_fengmiantupian5.jpg','内容5','2021-02-23','发布者5','来源5','资讯类型5'),(56,'2021-02-23 10:17:10','资讯标题6','http://localhost:8080/jspmen24b/upload/jiazhengzixun_fengmiantupian6.jpg','内容6','2021-02-23','发布者6','来源6','资讯类型6'),(1614047326093,'2021-02-23 10:28:45','xxxx资讯','http://localhost:8080/jspmen24b/upload/1614047304071.jpg','xxxxxxxxxx\r\nxx\r\n','2021-02-23','管理员','互联网','家政资讯');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614047424637 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1614047424636,'2021-02-23 10:30:23',1614047397148,65,'jiazhengfuwu','家政姓名5','http://localhost:8080/jspmen24b/upload/jiazhengfuwu_jiazhengtupian5.jpg');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','3leigmrfr56n0q28nbnk81cqrwds2q5w','2021-02-23 10:26:37','2021-02-23 11:32:38'),(2,1614047397148,'1','yonghu','用户','c6s9kdbbari65d4l9wx85w845ult4opx','2021-02-23 10:30:02','2021-02-23 11:32:07');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-02-23 10:17:10');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1614047397149 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`yonghuxingming`,`xingbie`,`touxiang`,`yonghushouji`) values (11,'2021-02-23 10:17:10','用户1','123456','用户姓名1','男','http://localhost:8080/jspmen24b/upload/yonghu_touxiang1.jpg','13823888881'),(12,'2021-02-23 10:17:10','用户2','123456','用户姓名2','男','http://localhost:8080/jspmen24b/upload/yonghu_touxiang2.jpg','13823888882'),(13,'2021-02-23 10:17:10','用户3','123456','用户姓名3','男','http://localhost:8080/jspmen24b/upload/yonghu_touxiang3.jpg','13823888883'),(14,'2021-02-23 10:17:10','用户4','123456','用户姓名4','男','http://localhost:8080/jspmen24b/upload/yonghu_touxiang4.jpg','13823888884'),(15,'2021-02-23 10:17:10','用户5','123456','用户姓名5','男','http://localhost:8080/jspmen24b/upload/yonghu_touxiang5.jpg','13823888885'),(16,'2021-02-23 10:17:10','用户6','123456','用户姓名6','男','http://localhost:8080/jspmen24b/upload/yonghu_touxiang6.jpg','13823888886'),(1614047397148,'2021-02-23 10:29:57','1','1','xxx用户','男','http://localhost:8080/jspmen24b/upload/1614047454912.jpg','13811111111');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
