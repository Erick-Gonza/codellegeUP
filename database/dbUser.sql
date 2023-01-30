--Create table user in database
CREATE TABLE USER(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    name varchar(255) NOT NULL COMMENT 'Name',
    last_name varchar(255) NOT NULL COMMENT 'Name',
    user_name varchar(255) NOT NULL COMMENT 'Name',
    email varchar(255) NOT NULL COMMENT 'Name',
    password varchar(255) NOT NULL COMMENT 'Name',
    role varchar(255) NOT NULL COMMENT 'Name',
    age int NOT NULL COMMENT 'Name'
) DEFAULT CHARSET UTF8;

--Create table CATEGORY in database
CREATE TABLE CATEGORY(
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    name VARCHAR(255) DEFAULT NULL COMMENT ''
) DEFAULT CHARSET UTF8 COMMENT '';

--Create table PRODUCT in database
CREATE TABLE PRODUCT(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    name VARCHAR(50) NOT NULL,
    price DOUBLE NOT NULL,
    description TEXT NOT NULL,
    stock INT NOT NULL,
    category_id INT UNSIGNED NOT NULL,
    FOREIGN KEY PRODUCT(category_id) REFERENCES CATEGORY(id) ON DELETE CASCADE ON UPDATE CASCADE
) DEFAULT CHARSET UTF8 COMMENT '';

-- INNER JOIN PRODUCT ID WITH CATEGORY ID
SELECT PRODUCT.name, PRODUCT.description, CATEGORY.name AS Category FROM PRODUCT
    INNER JOIN CATEGORY
    ON PRODUCT.category_id = CATEGORY.id
    WHERE CATEGORY.name LIKE "POS%";