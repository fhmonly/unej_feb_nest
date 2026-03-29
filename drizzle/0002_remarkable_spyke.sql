DROP TABLE `news_tags`;--> statement-breakpoint
ALTER TABLE `news` MODIFY COLUMN `category_id` int DEFAULT 1;--> statement-breakpoint
ALTER TABLE `news` ADD `tags` varchar(255);--> statement-breakpoint
ALTER TABLE `news` ADD CONSTRAINT `news_slug_unique` UNIQUE(`slug`);