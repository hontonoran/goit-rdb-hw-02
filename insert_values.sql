USE hw02;
 
INSERT INTO clients (client_name, client_address) VALUES
('Мельник', 'Хрещатик 1'),
('Шевченко', 'Басейна 2'),
('Коваленко', 'Комп''ютерна 3');
 
INSERT INTO products (product_name) VALUES
('Лептоп'),
('Мишка'),
('Принтер');
 
INSERT INTO orders (order_number, client_id, order_date) VALUES
('101', 1, '2023-03-15'),
('102', 2, '2023-03-16'),
('103', 3, '2023-03-17');
 
INSERT INTO order_details (order_id, product_id, quantity) VALUES
(1, 1, 3),
(1, 2, 2),
(2, 3, 1),
(3, 2, 4);