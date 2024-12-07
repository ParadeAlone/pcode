
CREATE TABLE `car` (
  `user_name` varchar(50),
  `goods` varchar(50) ,
  `amount` varchar(50) ,
  `state` varchar(50) 
)engine=InnoDB,charset=utf8mb4;


CREATE TABLE `commodity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) ,
  `price` varchar(50) ,
  `introduce` varchar(255) ,
  `img` varchar(500) ,
  `type` int ,
  PRIMARY KEY (`id`)
) engine=InnoDB,charset=utf8mb4;




CREATE TABLE `manage` (
  `name` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL
) engine=InnoDB,charset=utf8mb4;


INSERT INTO `manage` VALUES ('admin','123');


CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50),
  `pwd` varchar(50),
  `imgs` varchar(255) ,
  `phone` varchar(50) ,
  `address` varchar(50),
  PRIMARY KEY (`id`)
) engine=InnoDB,charset=utf8mb4;

