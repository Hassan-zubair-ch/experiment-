
-- MySQL Script to create the coffee shop database and tables

CREATE DATABASE IF NOT EXISTS hassan_coffee_shop;
USE hassan_coffee_shop;

-- Creating the 'products' table
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- Inserting sample products
INSERT INTO products (name, price) VALUES
('Espresso', 300),
('Latte', 350),
('Cappuccino', 400),
('Americano', 250),
('Mocha', 450);

-- Creating the 'cart' table
CREATE TABLE IF NOT EXISTS cart (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(id)
);

-- Sample query to select cart items with product details
-- SELECT cart.id, products.name, products.price, cart.quantity FROM cart
-- JOIN products ON cart.product_id = products.id;
