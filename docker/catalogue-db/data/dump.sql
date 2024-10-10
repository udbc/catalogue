USE socksdb;

-- Create the sock table with larger image_url fields
CREATE TABLE IF NOT EXISTS sock (
    sock_id varchar(40) NOT NULL,
    name varchar(50),
    description varchar(200),
    price float,
    count int,
    image_url_1 varchar(100),
    image_url_2 varchar(100),
    PRIMARY KEY(sock_id)
);

-- Create the tag table
CREATE TABLE IF NOT EXISTS tag (
    tag_id MEDIUMINT NOT NULL AUTO_INCREMENT,
    name varchar(20),
    PRIMARY KEY(tag_id)
);

-- Create the sock_tag table
CREATE TABLE IF NOT EXISTS sock_tag (
    sock_id varchar(40),
    tag_id MEDIUMINT NOT NULL,
    FOREIGN KEY (sock_id) REFERENCES sock(sock_id),
    FOREIGN KEY (tag_id) REFERENCES tag(tag_id)
);

-- Insert data into the sock table with realistic pricing
INSERT INTO sock VALUES ("a1b2c3d4-e5f6-7890-abcd-1234567890ab", "iPhone 16 Pro Max", "The latest premium iPhone from Apple with top-tier performance and features.", 1299.00, 200, "/catalogue/images/iphone-16-pro-max-2.jpg", "/catalogue/images/iphone-16-pro-max-2.jpg");
INSERT INTO sock VALUES ("b2c3d4e5-f6a7-8901-bcde-234567890abc", "Google Pixel 8 Pro", "Google's flagship phone with the best camera and AI features.", 999.00, 150, "/catalogue/images/google-pixel-8-pro-2.jpg", "/catalogue/images/google-pixel-8-pro-2.jpg");
INSERT INTO sock VALUES ("c3d4e5f6-a7b8-9012-cdef-345678901abc", "Samsung Galaxy S24 Ultra", "The ultimate Samsung phone with a powerful camera setup and top specs.", 1199.00, 180, "/catalogue/images/samsung-galaxy-s24-ultra-2.jpg", "/catalogue/images/samsung-galaxy-s24-ultra-2.jpg");
INSERT INTO sock VALUES ("d4e5f6a7-b8c9-0123-def0-456789012abc", "OnePlus 12 Pro", "High-performance phone from OnePlus with fast charging and great display.", 799.00, 220, "/catalogue/images/oneplus-12-pro-2.jpg", "/catalogue/images/oneplus-12-pro-2.jpg");
INSERT INTO sock VALUES ("e5f6a7b8-c9d0-1234-ef01-567890123abc", "Xiaomi 14 Ultra", "Xiaomi's latest flagship with cutting-edge technology and features.", 849.00, 300, "/catalogue/images/xiaomi-14-ultra-2.jpg", "/catalogue/images/xiaomi-14-ultra-2.jpg");
INSERT INTO sock VALUES ("f6a7b8c9-d0e1-2345-f012-678901234abc", "Motorola Edge 40 Pro", "Motorola's flagship phone with a sleek design and excellent performance.", 699.00, 250, "/catalogue/images/motorola-edge-40-pro-2.jpg", "/catalogue/images/motorola-edge-40-pro-2.jpg");
INSERT INTO sock VALUES ("a7b8c9d0-e1f2-3456-0123-789012345abc", "Sony Xperia 1 VI", "Sony's high-end phone for photography and media enthusiasts.", 1099.00, 100, "/catalogue/images/sony-xperia-1-vi-2.jpg", "/catalogue/images/sony-xperia-1-vi-2.jpg");
INSERT INTO sock VALUES ("b8c9d0e1-f2a3-4567-1234-890123456abc", "Oppo Find X6 Pro", "Flagship phone from Oppo with stunning design and top-notch specs.", 899.00, 180, "/catalogue/images/oppo-find-x6-pro-2.jpg", "/catalogue/images/oppo-find-x6-pro-2.jpg");
INSERT INTO sock VALUES ("c9d0e1f2-a3b4-5678-2345-901234567abc", "Vivo X90 Pro+", "Vivo's ultimate camera-centric phone with high-end features.", 899.00, 200, "/catalogue/images/vivo-x90-pro-plus-2.jpg", "/catalogue/images/vivo-x90-pro-plus-2.jpg");

-- Insert data into the tag table
INSERT INTO tag (name) VALUES ("5G"), ("Dual Camera"), ("6GB RAM"), ("Black"), ("Silver"), ("Blue"), ("Xiaomi"), ("Motorola"), ("Samsung"), ("Apple"), ("Google"), ("OnePlus"), ("Sony"), ("Oppo"), ("Vivo");

-- Insert data into the sock_tag table with corrected data types
INSERT INTO sock_tag VALUES ("a1b2c3d4-e5f6-7890-abcd-1234567890ab", 10);
INSERT INTO sock_tag VALUES ("a1b2c3d4-e5f6-7890-abcd-1234567890ab", 5);
INSERT INTO sock_tag VALUES ("b2c3d4e5-f6a7-8901-bcde-234567890abc", 11);
INSERT INTO sock_tag VALUES ("b2c3d4e5-f6a7-8901-bcde-234567890abc", 2);
INSERT INTO sock_tag VALUES ("c3d4e5f6-a7b8-9012-cdef-345678901abc", 9);
INSERT INTO sock_tag VALUES ("c3d4e5f6-a7b8-9012-cdef-345678901abc", 3);
INSERT INTO sock_tag VALUES ("d4e5f6a7-b8c9-0123-def0-456789012abc", 12);
INSERT INTO sock_tag VALUES ("d4e5f6a7-b8c9-0123-def0-456789012abc", 4);
INSERT INTO sock_tag VALUES ("e5f6a7b8-c9d0-1234-ef01-567890123abc", 7);
INSERT INTO sock_tag VALUES ("e5f6a7b8-c9d0-1234-ef01-567890123abc", 6);
INSERT INTO sock_tag VALUES ("f6a7b8c9-d0e1-2345-f012-678901234abc", 8);
INSERT INTO sock_tag VALUES ("f6a7b8c9-d0e1-2345-f012-678901234abc", 3);
INSERT INTO sock_tag VALUES ("a7b8c9d0-e1f2-3456-0123-789012345abc", 13);
INSERT INTO sock_tag VALUES ("a7b8c9d0-e1f2-3456-0123-789012345abc", 2);
INSERT INTO sock_tag VALUES ("b8c9d0e1-f2a3-4567-1234-890123456abc", 14);
INSERT INTO sock_tag VALUES ("b8c9d0e1-f2a3-4567-1234-890123456abc", 5);
INSERT INTO sock_tag VALUES ("c9d0e1f2-a3b4-5678-2345-901234567abc", 15);
INSERT INTO sock_tag VALUES ("c9d0e1f2-a3b4-5678-2345-901234567abc", 6);
