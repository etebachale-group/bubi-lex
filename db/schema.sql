-- Database: bubi_lex
CREATE DATABASE IF NOT EXISTS `bubi_lex` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `bubi_lex`;

-- Table: dictionary_entries
CREATE TABLE IF NOT EXISTS `dictionary_entries` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`bubi` TEXT NOT NULL,
	`spanish` TEXT NOT NULL,
	`ipa` VARCHAR(255) NULL,
	`notes` TEXT NULL,
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` TIMESTAMP NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
	`created_by` VARCHAR(255) NULL,
	`updated_by` VARCHAR(255) NULL,
	PRIMARY KEY (`id`),
	FULLTEXT KEY `ft_bubi_spanish` (`bubi`, `spanish`),
	KEY `idx_dictionary_entries_created_by` (`created_by`),
	KEY `idx_dictionary_entries_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Nota: Para prevenir duplicados estrictos, considera agregar un índice único:
-- ALTER TABLE dictionary_entries ADD UNIQUE KEY `unique_bubi` (`bubi`(255));
-- Sin embargo, esto requiere que 'bubi' sea VARCHAR en lugar de TEXT

-- Table: news
CREATE TABLE IF NOT EXISTS `news` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(255) NOT NULL,
	`content` TEXT NOT NULL,
	`date` DATE NOT NULL,
	`image` VARCHAR(512) NULL,
	`video` VARCHAR(512) NULL,
	`likes` INT UNSIGNED NOT NULL DEFAULT 0,
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` TIMESTAMP NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
	`created_by` VARCHAR(255) NULL,
	`updated_by` VARCHAR(255) NULL,
	PRIMARY KEY (`id`),
	KEY `idx_news_date` (`date`),
	KEY `idx_news_created_by` (`created_by`),
	KEY `idx_news_updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

