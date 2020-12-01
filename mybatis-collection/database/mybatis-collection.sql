CREATE DATABASE IF NOT EXISTS mybatis_collection DEFAULT CHARACTER SET 'utf8' DEFAULT COLLATE 'utf8_unicode_ci';

USE mybatis_collection;

-- ----------------------------
-- Table structure for user
-- ----------------------------

DROP TABLE IF EXISTS user;
CREATE TABLE user
(
    user_id  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(64)  NOT NULL,
    age      TINYINT      NOT NULL,
    UNIQUE KEY uk_username (username)
) ENGINE = InnoDB;

-- ----------------------------
-- Table structure for phone
-- ----------------------------

DROP TABLE IF EXISTS phone;
CREATE TABLE phone
(
    phone_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    brand    VARCHAR(64)  NOT NULL,
    price    DOUBLE       NOT NULL,
    user_id  INT UNSIGNED NOT NULL,
    CONSTRAINT fk_user_id FOREIGN KEY (user_id)
        REFERENCES user (user_id) ON DELETE CASCADE
) ENGINE = InnoDB;


INSERT INTO user (username, age) VALUE ('jun', 99);
INSERT INTO phone (brand, price, user_id)
VALUES ('apple', '100', 1),
       ('mi', '100', 1),
       ('samsung', '100', 1);
