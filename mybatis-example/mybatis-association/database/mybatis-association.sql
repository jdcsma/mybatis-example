CREATE DATABASE IF NOT EXISTS mybatis_association DEFAULT CHARACTER SET 'utf8' DEFAULT COLLATE 'utf8_unicode_ci';

USE mybatis_association;

-- ----------------------------
-- Table structure for card
-- ----------------------------

DROP TABLE IF EXISTS card;
CREATE TABLE card
(
    card_id  INT UNSIGNED NOT NULL PRIMARY KEY,
    card_num VARCHAR(64)  NOT NULL,
    address  VARCHAR(128) NOT NULL
) ENGINE = InnoDB;

-- ----------------------------
-- Table structure for user
-- ----------------------------

DROP TABLE IF EXISTS user;
CREATE TABLE user
(
    user_id  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(64)  NOT NULL,
    age      TINYINT      NOT NULL,
    card_id  INT UNSIGNED NOT NULL,
    UNIQUE KEY uk_username (username),
    CONSTRAINT fk_card_id FOREIGN KEY (card_id) REFERENCES card (card_id)
) ENGINE = InnoDB;

INSERT INTO card (card_id, card_num, address) VALUE (100, 'xxxxxx-xxx-xxxxx', 'china');
INSERT INTO user (username, age, card_id) VALUE ('jun', 99, 100);
