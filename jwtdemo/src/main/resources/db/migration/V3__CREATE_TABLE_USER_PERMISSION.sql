CREATE TABLE IF NOT EXISTS `user_permission` (
  `id_user` varchar(20) NOT NULL,
  `id_permission` CHAR(36) NOT NULL,
  PRIMARY KEY (`id_user`,`id_permission`),
  KEY `fk_user_permission_permission` (`id_permission`),
  CONSTRAINT `fk_user_permission` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_user_permission_permission` FOREIGN KEY (`id_permission`) REFERENCES `permission` (`id`)
);

INSERT INTO `user_permission` (id_user, id_permission)
VALUES (
  '2023.1.08.033',
  (SELECT id FROM `permission` WHERE description = 'MASTER_ADMINISTRATOR' LIMIT 1)
);