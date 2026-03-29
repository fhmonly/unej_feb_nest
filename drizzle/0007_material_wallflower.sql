CREATE TABLE `staffs` (
	`id` int AUTO_INCREMENT NOT NULL,
	`photo` varchar(255),
	`name` varchar(60) NOT NULL,
	`nip` varchar(20),
	`email` varchar(255) NOT NULL,
	`academic_level` varchar(60),
	`attachments` text,
	`front_title` varchar(20),
	`back_title` varchar(100),
	`nidn` varchar(20),
	`nuptk` varchar(20),
	`created_at` timestamp DEFAULT (now()),
	CONSTRAINT `staffs_id` PRIMARY KEY(`id`)
);
