CREATE TABLE `lectures` (
	`id` int AUTO_INCREMENT NOT NULL,
	`photo` varchar(255),
	`name` varchar(60) NOT NULL,
	`nip` varchar(20),
	`email` varchar(255) NOT NULL,
	`academic_level` varchar(60),
	`research_interest` varchar(255),
	`sinta_id` varchar(20),
	`scopus_id` varchar(20),
	`attachments` text,
	`front_title` varchar(20),
	`back_title` varchar(100),
	`nidn` varchar(20),
	`nuptk` varchar(20),
	`created_at` timestamp DEFAULT (now()),
	CONSTRAINT `lectures_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `research_group_members` (
	`id` int AUTO_INCREMENT NOT NULL,
	`research_group_id` int NOT NULL,
	`member_id` int NOT NULL,
	`created_at` timestamp DEFAULT (now()),
	CONSTRAINT `research_group_members_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `research_groups` (
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(255) NOT NULL,
	`description` varchar(255),
	`coordinator` int,
	`roadmap` varchar(255),
	`created_at` timestamp DEFAULT (now()),
	CONSTRAINT `research_groups_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
ALTER TABLE `research_group_members` ADD CONSTRAINT `research_group_members_research_group_id_research_groups_id_fk` FOREIGN KEY (`research_group_id`) REFERENCES `research_groups`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `research_group_members` ADD CONSTRAINT `research_group_members_member_id_lectures_id_fk` FOREIGN KEY (`member_id`) REFERENCES `lectures`(`id`) ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE `research_groups` ADD CONSTRAINT `research_groups_coordinator_lectures_id_fk` FOREIGN KEY (`coordinator`) REFERENCES `lectures`(`id`) ON DELETE no action ON UPDATE no action;