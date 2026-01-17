-- Tabla de auditoría persistente para acciones administrativas
-- Ejecutar este script después de schema.sql para agregar auditoría persistente

CREATE TABLE IF NOT EXISTS `admin_audit_log` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`actor_email` VARCHAR(255) NULL,
	`action` VARCHAR(100) NOT NULL,
	`target` VARCHAR(100) NULL,
	`meta` JSON NULL,
	PRIMARY KEY (`id`),
	KEY `idx_audit_timestamp` (`timestamp`),
	KEY `idx_audit_actor` (`actor_email`),
	KEY `idx_audit_action` (`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
