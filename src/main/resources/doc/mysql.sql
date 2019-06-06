-- 系统用户
CREATE TABLE `sys_user`
(
  `user_id`        bigint      NOT NULL AUTO_INCREMENT,
  `username`       varchar(50) NOT NULL COMMENT '用户名',
  `password`       varchar(100) COMMENT '密码',
  `salt`           varchar(20) COMMENT '盐',
  `email`          varchar(100) COMMENT '邮箱',
  `mobile`         varchar(100) COMMENT '手机号',
  `status`         tinyint COMMENT '状态  0：禁用   1：正常',
  `create_user_id` bigint(20) COMMENT '创建者ID',
  `create_time`    datetime COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX (`username`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='系统用户';

-- 初始数据 
INSERT INTO `sys_user` (`user_id`, `username`, `password`, `salt`, `email`, `mobile`, `status`, `create_user_id`,
                        `create_time`)
VALUES ('1', 'admin', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e',
        'root@renren.io', '13612345678', '1', '1', '2016-11-11 11:11:11');
