DROP DATABASE IF EXISTS hw02;
CREATE DATABASE hw02;
USE hw02;
 
CREATE TABLE clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    client_name VARCHAR(100) NOT NULL,
    client_address VARCHAR(255) NOT NULL
);
 
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL UNIQUE
);
 
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_number VARCHAR(20) NOT NULL UNIQUE,
    client_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);
 
CREATE TABLE order_details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    UNIQUE (order_id, product_id),
    CHECK (quantity > 0)
);