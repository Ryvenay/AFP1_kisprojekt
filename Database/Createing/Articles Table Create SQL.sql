CREATE TABLE `miniproject`.`articles` (
    `id` INT NOT NULL AUTO_INCREMENT , 
    `title` VARCHAR(255) NOT NULL , 
    `content` TEXT NOT NULL , 
    `banner` VARCHAR(255) NOT NULL , 
    `author` BIGINT NOT NULL , 
    `category` VARCHAR(255) NOT NULL , 
    `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`),
    FOREIGN KEY (author) REFERENCES users(id)
);