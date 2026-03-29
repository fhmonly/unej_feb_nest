CREATE TABLE `accreditation` (
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(255) NOT NULL,
	`accredited` varchar(255) NOT NULL,
	`accredited_by` varchar(255) NOT NULL,
	`start_date` date NOT NULL,
	`end_date` date NOT NULL,
	`attachment` varchar(255),
	`major_id` int NOT NULL,
	`created_at` timestamp DEFAULT (now()),
	CONSTRAINT `accreditation_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `photo_gallery` (
	`id` int AUTO_INCREMENT NOT NULL,
	`image` varchar(255) NOT NULL,
	`title` varchar(255),
	`created_at` timestamp DEFAULT (now()),
	CONSTRAINT `photo_gallery_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `video_gallery` (
	`id` int AUTO_INCREMENT NOT NULL,
	`video_url` varchar(255) NOT NULL,
	`thumbnail` varchar(255),
	`title` varchar(255),
	`created_at` timestamp DEFAULT (now()),
	CONSTRAINT `video_gallery_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `partnerships` (
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(255) NOT NULL,
	`activity` varchar(255) NOT NULL,
	`from_date` date NOT NULL,
	`category` varchar(255) NOT NULL,
	`created_at` timestamp DEFAULT (now()),
	CONSTRAINT `partnerships_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `static_content` (
	`id` int AUTO_INCREMENT NOT NULL,
	`key` varchar(255) NOT NULL,
	`content` text NOT NULL,
	`created_at` timestamp DEFAULT (now()),
	CONSTRAINT `static_content_id` PRIMARY KEY(`id`),
	CONSTRAINT `static_content_key_unique` UNIQUE(`key`)
);
--> statement-breakpoint
CREATE TABLE `degrees` (
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(255) NOT NULL,
	`degree_code` varchar(255) NOT NULL,
	`created_at` timestamp DEFAULT (now()),
	CONSTRAINT `degrees_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `majors` (
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(255) NOT NULL,
	`major_code` varchar(255) NOT NULL,
	`degree_id` int NOT NULL,
	`created_at` timestamp DEFAULT (now()),
	CONSTRAINT `majors_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
ALTER TABLE `accreditation` ADD CONSTRAINT `accreditation_major_id_majors_id_fk` FOREIGN KEY (`major_id`) REFERENCES `majors`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `majors` ADD CONSTRAINT `majors_degree_id_degrees_id_fk` FOREIGN KEY (`degree_id`) REFERENCES `degrees`(`id`) ON DELETE no action ON UPDATE no action;