create database if not exists test;

use test;
set names utf8;

create table if not EXISTS `user`(
   `id` int(32) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
   `nick_name` varchar(24) NOT NULL DEFAULT '' COMMENT '微信昵称',
   `app_id` varchar(30) NOT NULL DEFAULT '' COMMENT '微信中唯一标识',
   `type` varchar(30) NOT NULL DEFAULT '' COMMENT '0：普通用户 1：会员',
   `type` tinyint NOT NULL DEFAULT 0 COMMENT '0：普通用户 1：会员',
   `integral` bigint NOT NULL DEFAULT 0 COMMENT '积分',
   `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '当前时间',
   `update_time` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT  '更新时间',
   PRIMARY KEY (`id`),
   UNIQUE KEY `uniq_origin_dest_city_name_mode` (origin,dest,city_name,mode)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

create table if not EXISTS `address`(
   `id` int(32) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
   `user_id` int(32) NOT NULL DEFAULT '' COMMENT '用户id',
   `phone` varchar(15) NOT NULL DEFAULT '' COMMENT '电话',
   `detail` varchar(50) NOT NULL DEFAULT '' COMMENT '详细地址',
   `priority` tinyint NOT NULL DEFAULT 0 COMMENT '优先级',
   `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '当前时间',
   `update_time` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT  '更新时间',
   PRIMARY KEY (`id`),
   UNIQUE KEY `uniq_origin_dest_city_name_mode` (origin,dest,city_name,mode)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='地址表';

create table if not EXISTS `good`(
   `id` int(32) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
   `user_id` int(32) NOT NULL DEFAULT '' COMMENT '用户的id',
   `class_id` int(32) NOT NULL DEFAULT '' COMMENT '种类id',
   `name` varchar(50) NOT NULL DEFAULT '' COMMENT '物品的名称',
    `number` int(32) NOT NULL DEFAULT '' COMMENT '数量',
   `price` int(32) NOT NULL DEFAULT '' COMMENT '单价',
   `status` tinyint NOT NULL DEFAULT 0 COMMENT '物品的状态：0，提交 1.已经购买 3. 已经发货',
   `promotion_type` tinyint NOT NULL DEFAULT 0 COMMENT '营销种类 0：无 1：拼团 2：砍价',
   `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '当前时间',
   `update_time` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT  '更新时间',
   PRIMARY KEY (`id`),
   UNIQUE KEY `uniq_origin_dest_city_name_mode` (origin,dest,city_name,mode)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='物品';

create table if not EXISTS `class`(
   `id` int(32) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
   `class_name` int(32) NOT NULL DEFAULT '' COMMENT '种类名称',
   `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '当前时间',
   `update_time` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT  '更新时间',
   PRIMARY KEY (`id`),
   UNIQUE KEY `uniq_origin_dest_city_name_mode` (origin,dest,city_name,mode)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT=' 种类';
