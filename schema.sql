DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `ratings`;

CREATE TABLE `users` 
(
    `id` INTEGER PRIMARY KEY, 
    `name` VARCHAR(100) NOT NULL, 
    `grade` INTEGER NOT NULL,
    `country` VARCHAR(200) NULL,
    `tarif` INTEGER NULL
);

 CREATE TABLE `ratings` 
 (
     `id` INTEGER PRIMARY KEY, 
     `user_id` INTEGER NOT NULL,
     `title` VARCHAR(100) NOT NULL, 
     `note` INTEGER NULL,
     `coefficient` INTEGER DEFAULT 1,
     FOREIGN KEY(`user_id`) REFERENCES `users`(`id`)
);

INSERT INTO `users` (`name`, `grade`, `country`, `tarif`) 
VALUES ('Hero', 1, 'Austrialia', 120), ('Dunn', 2, 'Austrialia', 120), ('Sue', 2, 'Austrialia', 120),
 ('Thor', 1, 'Canada', 400), ('Hicks', 1, 'Canada', 400),('Superman', 3, 'USA', 500);

INSERT INTO `ratings` (`user_id`, `title`, `note`, `coefficient` )
VALUES 
(1, 'Mathematic', 20, 9),
(1, 'Mathematic', 17, 5),
(2, 'Mathematic', 16, 5),
(2, 'Algorithmic', 16, 5),
(2, 'Algorithmic', 10, 5),
(2, 'Mathematic', 19, 6),
(3, 'Algorithmic', 20, 9),
(4, 'Mathematic', 16, 9),
(4, 'Algorithmic', 16, 9),
(5, 'Algorithmic', 11, 7),
(5, 'Mathematic', 16, 9);