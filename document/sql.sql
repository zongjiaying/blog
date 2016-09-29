-- 建库
CREATE DATABASE `myblog`;

-- 选库
USE `myblog`;

-- 用户表
CREATE TABLE github_user(
	`user_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`username` VARCHAR(255) NOT NULL UNIQUE,
	`password` VARCHAR(255) NOT NULL,
	`status` TINYINT NOT NULL,
	`addtime` INT NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

-- 添加1条数据
INSERT INTO `github_user` (username, password, status, addtime) VALUES ('admin', md5('admin'), 1, UNIX_TIMESTAMP());

-- 更新数据库的记录
UPDATE `github_user` SET `password` = md5('adminxdl');



-- 留言板，建表
CREATE TABLE `github_urls`(
	`url_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`username` VARCHAR(30) NOT NULL,
	`personid` VARCHAR(255) NOT NULL,
	`classname` VARCHAR(255) NOT NULL,
	`github_url` TEXT NOT NULL,
	`status` TINYINT NOT NULL DEFAULT 0
) ENGINE=INNODB DEFAULT CHARSET=utf8;

-- 修改表
ALTER TABLE `github_urls` ADD `addtime` INT NOT NULL AFTER `status`;