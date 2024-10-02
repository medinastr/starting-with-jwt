CREATE TABLE IF NOT EXISTS `users` (
  `id` varchar(20) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_non_expired` bit(1) NOT NULL,
  `account_non_locked` bit(1) NOT NULL,
  `credentials_non_expired` bit(1) NOT NULL,
  `enabled` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_name` (`user_name`),
  UNIQUE KEY `uk_user_full_name` (`full_name`)
);

INSERT INTO `users` (`id`, `user_name`, `full_name`, `password`, `account_non_expired`, `account_non_locked`, `credentials_non_expired`, `enabled`) VALUES
	('2023.1.08.033', 'medinastr', 'Pedro Medina Stracieri', '5d997031332ebe6c5a354e1ad3a1f2fec1cb596018612f3bb8959d1cf7c9b1e696cfb001eaf51534', b'1', b'1', b'1', b'1'); -- admin123