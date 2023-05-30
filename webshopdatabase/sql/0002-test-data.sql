-- Customer
USE customerdb;
INSERT INTO customer (id, first_name, last_name, social_security_number) VALUES (1, 'Gollum', 'Smeagol', '1234567890');
INSERT INTO customer (id, first_name, last_name, social_security_number) VALUES (2, 'Frodo', 'Baggins', '0987654321');
INSERT INTO customer (id, first_name, last_name, social_security_number) VALUES (3, 'Samwise', 'Gamgee', '1234509876');
INSERT INTO customer (id, first_name, last_name, social_security_number) VALUES (4, 'Bilbo', 'Baggins', '6789054321');
UPDATE customer_seq SET next_val = 54;

-- Items/Products
USE itemdb;
INSERT INTO item (id, name, price) VALUES (1, 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops', 109.95);
INSERT INTO item (id, name, price) VALUES (2, 'Mens Casual Premium Slim Fit T-Shirts', 22.3);
INSERT INTO item (id, name, price) VALUES (3, 'Mens Cotton Jacket', 55.99);
INSERT INTO item (id, name, price) VALUES (4, 'Mens Casual Slim Fit', 15.99);
INSERT INTO item (id, name, price) VALUES (5, 'John Hardy Womens Legends Naga Gold & Silver Dragon Station Chain Bracelet', 695.0);
INSERT INTO item (id, name, price) VALUES (6, 'Solid Gold Petite Micropave ', 168.3);
INSERT INTO item (id, name, price) VALUES (7, 'White Gold Plated Princess', 9.99);
INSERT INTO item (id, name, price) VALUES (8, 'Pierced Owl Rose Gold Plated Stainless Steel Double', 10.99);
INSERT INTO item (id, name, price) VALUES (9, 'WD 2TB Elements Portable External Hard Drive - USB 3.0', 64.0);
INSERT INTO item (id, name, price) VALUES (10, 'SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s', 109.99);
INSERT INTO item (id, name, price) VALUES (11, 'Silicon Power 256GB SSD 3D NAND A55 SLC Cache Performance Boost SATA III 2.5', 109.99);
INSERT INTO item (id, name, price) VALUES (12, 'WD 4TB Gaming Drive Works with Playstation 4 Portable External Hard Drive', 114.0);
INSERT INTO item (id, name, price) VALUES (13, 'Acer SB220Q bi 21.5 inches Full HD (1920 x 1080) IPS Ultra-Thin', 599.99);
INSERT INTO item (id, name, price) VALUES (14, 'Samsung 49-Inch CHG90 144Hz Curved Gaming Monitor (LC49HG90DMNXZA) Super Ultrawide Screen QLED ', 999.99);
INSERT INTO item (id, name, price) VALUES (15, "BIYLACLESEN Women's 3-in-1 Snowboard Jacket Winter Coats", 56.99);
UPDATE item_seq SET next_val = 64;


-- Orders
USE ordersdb;
INSERT INTO orders (id, customer_id, order_date) VALUES (1, 1, '2023-03-25 21:30:42');
INSERT INTO orders (id, customer_id, order_date) VALUES (2, 2, '2023-04-01 09:39:42');
INSERT INTO orders (id, customer_id, order_date) VALUES (3, 3, '2023-04-10 16:30:30');
INSERT INTO orders (id, customer_id, order_date) VALUES (4, 4, '2023-04-20 12:10:20');
INSERT INTO orders (id, customer_id, order_date) VALUES (5, 1, '2023-04-25 21:30:42');
UPDATE orders_seq SET next_val = 55;


-- Order 1 items
INSERT INTO orders_items (order_id, items_id) VALUES (1, 1);
INSERT INTO orders_items (order_id, items_id) VALUES (1, 2);
INSERT INTO orders_items (order_id, items_id) VALUES (1, 3);

-- Order 2 items
INSERT INTO orders_items (order_id, items_id) VALUES (2, 4);
INSERT INTO orders_items (order_id, items_id) VALUES (2, 5);

-- Order 3 items
INSERT INTO orders_items (order_id, items_id) VALUES (3, 1);
INSERT INTO orders_items (order_id, items_id) VALUES (3, 3);
INSERT INTO orders_items (order_id, items_id) VALUES (3, 5);

-- Order 4 items
INSERT INTO orders_items (order_id, items_id) VALUES (4, 2);
INSERT INTO orders_items (order_id, items_id) VALUES (4, 4);

-- Order 5 items
INSERT INTO orders_items (order_id, items_id) VALUES (5, 1);
INSERT INTO orders_items (order_id, items_id) VALUES (5, 2);
INSERT INTO orders_items (order_id, items_id) VALUES (5, 3);