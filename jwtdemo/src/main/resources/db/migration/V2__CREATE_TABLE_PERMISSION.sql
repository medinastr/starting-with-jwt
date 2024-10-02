CREATE TABLE IF NOT EXISTS `permission` (
  `id` CHAR(36) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_permission_description` (`description`)
);

INSERT INTO `permission` (`id`, `description`) VALUES
    (UUID(), 'MASTER_ADMINISTRATOR'),
	(UUID(), 'ADMINISTRATOR'),
	(UUID(), 'SPONSOR');