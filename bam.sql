DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;
CREATE TABLE product_list(
id INT AUTO_INCREMENT NOT NULL,
item_name VARCHAR(30) NOT NULL,
item_dept VARCHAR(30) NOT NULL,
item_price DECIMAL(10,2) NULL,
item_quantity INTEGER NOT NULL,
item_id VARCHAR(30) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO product_list (item_name, item_dept, item_price, item_quantity, item_id)
VALUES ("Xbox One X", "Electronics", 499.99, 5, "xbxx-01");

INSERT INTO product_list (item_name, item_dept, item_price, item_quantity, item_id)
VALUES ("Playstation 4 Pro", "Electronics", 399.99, 25, "pspro-02");

INSERT INTO product_list (item_name, item_dept, item_price, item_quantity, item_id)
VALUES ("Nintendo Switch", "Electronics", 299.99, 0, "ninsw-03");

INSERT INTO product_list (item_name, item_dept, item_price, item_quantity, item_id)
VALUES ("Xbox One S", "Electronics", 249.99, 45, "xbxs-04");

INSERT INTO product_list (item_name, item_dept, item_price, item_quantity, item_id)
VALUES ("PS4 Refurbished", "Electronics", 249.99, 60, "psrfb-05");

INSERT INTO product_list (item_name, item_dept, item_price, item_quantity, item_id)
VALUES ("Nintendo Wii U", "Electronics", 199.99, 99, "ninwu-06");

INSERT INTO product_list (item_name, item_dept, item_price, item_quantity, item_id)
VALUES ("Playstation 4 VR", "Electronics", 399.99, 60, "psvr-07");

INSERT INTO product_list (item_name, item_dept, item_price, item_quantity, item_id)
VALUES ("HTC Vive VR", "Electronics", 599.99, 3, "htcvr-08");

INSERT INTO product_list (item_name, item_dept, item_price, item_quantity, item_id)
VALUES ("Nintendo New 3DS XL Black", "Electronics", 199.99, 15, "n3ds-09");

INSERT INTO product_list (item_name, item_dept, item_price, item_quantity, item_id)
VALUES ("Nintendo New 2DS XL Bl & Tq", "Electronics", 149.99, 9, "n2ds-10");