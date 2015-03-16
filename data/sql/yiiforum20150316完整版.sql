# Host: 127.0.0.1  (Version: 5.6.16)
# Date: 2015-03-16 10:51:23
# Generator: MySQL-Front 5.3  (Build 4.13)

/*!40101 SET NAMES utf8 */;

#
# Source for table "auth_assignment"
#

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "auth_assignment"
#

INSERT INTO `auth_assignment` VALUES ('admin_level_2','1',1401722422),('member_level_2','1',1425549940),('管理员','1',1425552173);

#
# Source for table "auth_item_child"
#

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "auth_item_child"
#

INSERT INTO `auth_item_child` VALUES ('admin_level_0','post_add'),('admin_level_0','post_delete'),('admin_level_0','post_edit'),('admin_level_0','thread_add'),('admin_level_0','thread_delete'),('admin_level_0','thread_edit'),('admin_level_0','thread_view'),('category_post','post_add'),('category_post','post_delete'),('category_post','post_edit'),('category_thread','thread_add'),('category_thread','thread_delete'),('category_thread','thread_edit'),('category_thread','thread_view'),('group_admin','admin_level_0'),('group_admin','admin_level_1'),('group_admin','admin_level_2'),('group_admin','管理员'),('group_custom','custom_level_0'),('group_custom','custom_level_1'),('group_custom','版主'),('group_member','member_level_0'),('group_member','member_level_1'),('group_member','member_level_2'),('group_member','member_level_3'),('group_member','member_level_4'),('group_member','member_level_5'),('group_member','member_level_6'),('group_member','一级会员'),('group_member','二级会员'),('group_member','新手入门'),('group_member','高级会员'),('group_special','special_level_0'),('group_special','special_levle_1'),('member_level_1','post_delete'),('member_level_1','post_edit'),('member_level_1','thread_add'),('member_level_1','thread_delete'),('member_level_1','thread_edit'),('member_level_1','thread_view'),('member_level_2','post_add'),('member_level_2','post_delete'),('member_level_2','post_edit'),('member_level_2','thread_add'),('member_level_2','thread_delete'),('member_level_2','thread_edit'),('member_level_2','thread_view'),('member_level_3','post_add'),('member_level_3','post_delete'),('member_level_3','post_edit'),('member_level_3','thread_add'),('member_level_3','thread_delete'),('member_level_3','thread_edit'),('member_level_3','thread_view'),('member_level_4','post_add'),('member_level_4','post_delete'),('member_level_4','post_edit'),('member_level_4','thread_add'),('member_level_4','thread_delete'),('member_level_4','thread_edit'),('member_level_4','thread_view'),('member_level_5','post_add'),('member_level_5','post_delete'),('member_level_5','post_edit'),('member_level_5','thread_add'),('member_level_5','thread_delete'),('member_level_5','thread_edit'),('member_level_5','thread_view'),('member_level_6','post_add'),('member_level_6','post_delete'),('member_level_6','post_edit'),('member_level_6','thread_add'),('member_level_6','thread_delete'),('member_level_6','thread_edit'),('member_level_6','thread_view'),('root_permission','category_post'),('root_permission','category_thread'),('root_role','group_admin'),('root_role','group_custom'),('root_role','group_member'),('root_role','group_special'),('二级会员','post_add'),('二级会员','post_delete'),('二级会员','post_edit'),('二级会员','thread_view'),('新手入门','post_add'),('新手入门','post_delete'),('新手入门','post_edit'),('新手入门','thread_view'),('版主','post_add'),('版主','post_delete'),('版主','post_edit'),('版主','thread_view'),('管理员','post_add'),('管理员','post_delete'),('管理员','post_edit'),('管理员','thread_add'),('管理员','thread_delete'),('管理员','thread_edit'),('管理员','thread_view'),('高级会员','post_add'),('高级会员','post_delete'),('高级会员','post_edit'),('高级会员','thread_view');

#
# Source for table "auth_rule"
#

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "auth_rule"
#


#
# Source for table "auth_item"
#

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "auth_item"
#

INSERT INTO `auth_item` VALUES ('admin',1,'管理员',NULL,'s:0:\"\";',1401454436,1401454436),('board_role',1,'版主',NULL,'s:0:\"\";',1401457749,1401457749),('category_post',2,'帖子权限',NULL,'s:0:\"\";',1401452696,1401452696),('category_thread',2,'主题权限',NULL,'s:0:\"\";',1401452713,1401452713),('group_admin',1,'管理员组',NULL,'s:0:\"\";',1401369900,1401369900),('group_custom',1,'自定义组',NULL,'s:0:\"\";',1401451311,1401451311),('group_member',1,'会员组',NULL,'s:0:\"\";',1401369927,1401369927),('group_special',1,'特殊组',NULL,'s:0:\"\";',1401369950,1401369950),('member_hight',1,'高级会员',NULL,'s:0:\"\";',1401454797,1401454797),('member_low',1,'初级会员',NULL,'s:0:\"\";',1401454856,1401454856),('member_middle',1,'中级会员',NULL,'s:0:\"\";',1401454824,1401454824),('post_add',2,'增加回帖',NULL,'s:0:\"\";',1401455750,1401455750),('post_delete',2,'删除回帖',NULL,'s:0:\"\";',1401455785,1401455785),('post_edit',2,'编辑回帖',NULL,'s:7:\"s:0:\"\";\";',1401455770,1401459773),('root_permission',2,'',NULL,'s:0:\"\";',1401451120,1401451120),('root_role',1,'',NULL,'s:0:\"\";',1401451102,1401451102),('thread_add',2,'添加主题',NULL,'s:0:\"\";',1401455680,1401455680),('thread_delete',2,'删除主题',NULL,'s:0:\"\";',1401455712,1401455712),('thread_edit',2,'修改主题',NULL,'s:0:\"\";',1401455698,1401455698),('thread_view',2,'浏览主题',NULL,'s:0:\"\";',1401455728,1401455728),('一级会员',1,'一级会员',NULL,'s:0:\"\";',1425551977,1425551977),('二级会员',1,'二级会员',NULL,'s:0:\"\";',1425551991,1425551991),('新手入门',1,'新手入门',NULL,'s:0:\"\";',1425551957,1425551957),('版主',1,'版主',NULL,'s:0:\"\";',1425551934,1425551934),('管理员',1,'管理员有各种操作权限',NULL,'s:0:\"\";',1425551891,1425551891),('高级会员',1,'高级会员',NULL,'s:0:\"\";',1425552006,1425552006);

#
# Source for table "board"
#

CREATE TABLE `board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `description` varchar(128) NOT NULL,
  `rule` varchar(512) DEFAULT NULL,
  `columns` smallint(6) NOT NULL DEFAULT '0',
  `sort_num` int(11) NOT NULL DEFAULT '0',
  `redirect_url` varchar(128) DEFAULT NULL,
  `target` varchar(32) NOT NULL DEFAULT '_blank',
  `threads` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `modify_time` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `user_name` varchar(32) DEFAULT NULL,
  `thread_id` int(11) DEFAULT '0',
  `thread_title` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Data for table "board"
#

INSERT INTO `board` VALUES (1,0,'新闻',NULL,'新闻',NULL,0,0,NULL,'_blank',0,0,'2015-03-05 17:24:06',0,NULL,0,NULL),(2,1,'国内',NULL,'国内',NULL,0,0,NULL,'_blank',0,0,'2015-03-05 17:24:06',0,NULL,0,NULL),(3,1,'国际',NULL,'国际',NULL,0,0,NULL,'_blank',0,0,'2015-03-05 17:24:06',0,NULL,0,NULL),(4,1,'社会',NULL,'社会',NULL,0,0,NULL,'_blank',0,0,'2015-03-05 17:24:06',0,NULL,0,NULL),(5,0,'体育',NULL,'体育',NULL,0,0,NULL,'_blank',0,0,'2015-03-05 17:24:06',0,NULL,0,NULL),(6,5,'NBA',NULL,'NBA',NULL,0,0,NULL,'_blank',0,0,'2015-03-05 17:24:06',0,NULL,0,NULL),(7,5,'CBA',NULL,'CBA',NULL,0,0,NULL,'_blank',0,0,'2015-03-05 17:24:06',0,NULL,0,NULL),(8,5,'足球',NULL,'足球',NULL,0,0,NULL,'_blank',0,0,'2015-03-05 17:24:06',0,NULL,0,NULL),(9,0,'科技',NULL,'科技',NULL,0,0,NULL,'_blank',0,0,'2015-03-05 17:24:06',0,NULL,0,NULL),(10,9,'互联网',NULL,'互联网',NULL,0,0,NULL,'_blank',1,1,'2015-03-05 18:44:20',1,'qishaohe',20,'互联网板块大涨'),(11,9,'数码产品',NULL,'数码产品',NULL,0,0,NULL,'_blank',0,0,'2015-03-05 17:24:06',0,NULL,0,NULL),(12,9,'探索',NULL,'探索',NULL,0,0,NULL,'_blank',0,0,'2015-03-05 17:24:06',0,NULL,0,NULL),(13,9,'手机',NULL,'手机',NULL,0,0,NULL,'_blank',0,0,'2015-03-05 17:24:06',0,NULL,0,NULL);

#
# Source for table "migration"
#

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "migration"
#

INSERT INTO `migration` VALUES ('m000000_000000_base',1400502923),('m130524_201442_init',1400502936);

#
# Source for table "post"
#

CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `title` varchar(128) NOT NULL,
  `body` text NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `supports` int(11) NOT NULL DEFAULT '0',
  `againsts` int(11) NOT NULL DEFAULT '0',
  `floor` int(11) NOT NULL DEFAULT '0',
  `note` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "post"
#

INSERT INTO `post` VALUES (1,15,0,'admin','bb','bb','2014-05-19 15:02:00','2014-05-19 23:02:00',0,0,0,''),(2,15,0,'admin','yy','yy','2014-05-19 15:32:50','2014-05-19 15:32:50',0,0,0,''),(3,15,0,'admin','cc','cc','2014-05-19 15:32:56','2014-05-19 15:32:56',0,0,0,''),(4,18,0,'admin','ttt','ttt','2014-05-19 15:59:44','2014-05-19 15:59:44',0,0,0,''),(5,1,0,'admin','tt','tt','2014-05-19 22:38:50','2014-05-19 22:38:50',0,0,0,''),(6,19,0,'admin','bb','bb','2014-05-19 22:39:13','2014-05-19 22:39:13',0,0,0,''),(7,19,0,'admin','uu','uu','2014-05-19 22:50:25','2014-05-19 22:50:25',0,0,0,''),(8,20,1,'qishaohe','互联网板块大涨','互联网板块大涨','2015-03-05 18:43:40','2015-03-05 18:43:40',0,0,0,''),(9,20,1,'qishaohe','','呵呵是么?','2015-03-05 18:44:20','2015-03-05 18:44:20',0,0,0,'');

#
# Source for table "thread"
#

CREATE TABLE `thread` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `title` varchar(256) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `views` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `note1` varchar(64) DEFAULT NULL,
  `note2` varchar(64) DEFAULT NULL,
  `last_user_id` int(11) NOT NULL,
  `last_user_name` varchar(32) NOT NULL,
  `last_modify_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

#
# Data for table "thread"
#

INSERT INTO `thread` VALUES (1,2,0,'admin','aaa','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(2,2,0,'admin','子孙','0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(3,2,0,'admin','bbb','2014-05-19 14:01:33','0000-00-00 00:00:00',0,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(4,2,0,'admin','ttww','2014-05-19 14:15:22','0000-00-00 00:00:00',0,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(5,3,0,'admin','tt','2014-05-19 14:19:05','0000-00-00 00:00:00',0,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(6,3,0,'admin','tt','2014-05-19 14:21:15','0000-00-00 00:00:00',0,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(7,2,0,'admin','www','2015-03-05 18:45:10','0000-00-00 00:00:00',1,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(8,2,0,'admin','www','2014-05-19 14:36:09','0000-00-00 00:00:00',0,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(9,2,0,'admin','yyy','2015-03-05 18:45:19','0000-00-00 00:00:00',1,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(10,2,0,'admin','yyy','2014-05-19 14:45:32','0000-00-00 00:00:00',0,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(11,2,0,'admin','uu','2014-05-19 14:54:03','0000-00-00 00:00:00',0,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(12,2,0,'admin','123','2014-05-19 14:55:45','0000-00-00 00:00:00',0,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(13,2,0,'admin','a','2014-05-19 14:57:37','0000-00-00 00:00:00',0,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(14,2,0,'admin','cc','2014-05-19 15:01:20','0000-00-00 00:00:00',0,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(15,2,0,'admin','bb','2014-05-19 15:02:00','0000-00-00 00:00:00',0,0,4,NULL,NULL,0,'','0000-00-00 00:00:00'),(16,2,0,'admin','ttt','2014-05-19 15:58:33','0000-00-00 00:00:00',0,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(17,2,0,'admin','ttt','2014-05-19 15:59:05','0000-00-00 00:00:00',0,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(18,2,0,'admin','ttt','2014-05-19 15:59:44','0000-00-00 00:00:00',0,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(19,2,0,'admin','bb','2014-05-19 22:39:13','0000-00-00 00:00:00',0,0,1,NULL,NULL,0,'','0000-00-00 00:00:00'),(20,10,1,'qishaohe','互联网板块大涨','2015-03-12 17:49:29','2015-03-05 18:43:40',10,1,1,NULL,NULL,1,'qishaohe','2015-03-05 18:44:20');

#
# Source for table "user"
#

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `role` smallint(6) NOT NULL DEFAULT '10',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'qishaohe','J','$2y$13$x7VXPC7quuVOvYi2/iTHyOG/xThtDMO01zExPBbynWLVojrm8rr7W',NULL,'qishaohe@126.com',10,10,1425549463,1425549463);
