CREATE TABLE `news` (
	`id` int AUTO_INCREMENT NOT NULL,
	`image` varchar(255),
	`title` varchar(255) NOT NULL,
	`slug` varchar(255) NOT NULL,
	`content` text NOT NULL,
	`author` varchar(100),
	`category_id` int DEFAULT 0,
	`created_at` timestamp DEFAULT (now()),
	`updated_at` timestamp DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT `news_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `news_categories` (
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(255) NOT NULL,
	`slug` varchar(255) NOT NULL,
	CONSTRAINT `news_categories_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE TABLE `news_tags` (
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(255) NOT NULL,
	`slug` varchar(255) NOT NULL,
	CONSTRAINT `news_tags_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
ALTER TABLE `sessions` MODIFY COLUMN `token_id` varchar(255) NOT NULL;--> statement-breakpoint
ALTER TABLE `sessions` MODIFY COLUMN `refresh_token_hash` varchar(255) NOT NULL;--> statement-breakpoint
ALTER TABLE `news` ADD CONSTRAINT `news_category_id_news_categories_id_fk` FOREIGN KEY (`category_id`) REFERENCES `news_categories`(`id`) ON DELETE no action ON UPDATE no action;