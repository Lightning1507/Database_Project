INSERT INTO Categories (name, description) VALUES
('Smartphones', 'Various smartphone brands and models'),
('Laptops', 'Laptops for work, study, and gaming'),
('Tablets', 'Portable tablets for work and entertainment'),
('Accessories', 'Tech accessories such as keyboards and headphones'),
('Smart Home', 'Smart devices for home automation');



INSERT INTO Users (username, password, email, address, phone, role) VALUES
('hoangminh', 'hashed_password1', 'hoangminh98@gmail.com', '25 Nguyen Trai, Quan 1, TP HCM', '0912345678', 'customer'),
('nguyenhoa', 'hashed_password2', 'nguyenhoa87@yahoo.com', '56 Le Loi, Quan 3, TP HCM', '0923456789', 'customer'),
('tranthanh', 'hashed_password3', 'tranthanh01@outlook.com', '12 Hoang Dieu, Ba Dinh, Ha Noi', '0934567890', 'customer'),
('phamquang', 'hashed_password4', 'phamquang77@gmail.com', '89 Tran Hung Dao, Hai Chau, Da Nang', '0945678901', 'customer'),
('lethuy', 'hashed_password5', 'lethuy22@hotmail.com', '35 Nguyen Van Cu, Long Bien, Ha Noi', '0956789012', 'customer'),
('danghieu', 'hashed_password6', 'danghieu99@zmail.com', '90 Cach Mang Thang 8, Quan 10, TP HCM', '0967890123', 'customer'),
('vuhoang', 'hashed_password7', 'vuhoang55@gmail.com', '22 Nguyen Dinh Chieu, Phu Nhuan, TP HCM', '0978901234', 'customer'),
('buiduc', 'hashed_password8', 'buiduc11@live.com', '76 Ly Thuong Kiet, Hoan Kiem, Ha Noi', '0989012345', 'customer'),
('hoangyen', 'hashed_password9', 'hoangyen08@ymail.com', '44 Hai Ba Trung, Ninh Kieu, Can Tho', '0901234567', 'customer'),
('dinhphuong', 'hashed_password10', 'dinhphuong29@outlook.com', '18 Bach Dang, Hai Chau, Da Nang', '0910123456', 'customer'),
-- Thêm admin
('admin1', 'hashed_admin_password', 'admin@example.com', 'Admin Office, District 1, TP HCM', '0887654321', 'admin');


INSERT INTO Products (name, price, description, stock) VALUES
('iPhone 15 Pro Max', 29990000, 'Apple flagship smartphone with A17 chip', 50),
('Samsung Galaxy S23 Ultra', 25990000, 'High-end Samsung phone with S-Pen', 40),
('MacBook Air M2', 28990000, 'Ultra-light laptop with M2 chip', 30),
('Dell XPS 15', 34990000, 'Powerful laptop with OLED display', 20),
('iPad Pro M2', 22990000, 'Apple tablet with M2 chip', 35),
('Xiaomi Pad 6', 8990000, 'Affordable Android tablet with strong performance', 40),
('Apple Watch Ultra 2', 23990000, 'Smartwatch designed for athletes', 25),
('Samsung Galaxy Watch 6', 7990000, 'Smartwatch for Android users', 50),
('AirPods Pro 2', 5990000, 'Apple noise-canceling earbuds', 60),
('Sony WH-1000XM5', 8990000, 'Top-tier noise-canceling headphones', 30),
('Xiaomi Robot Vacuum', 5990000, 'Smart vacuum cleaner with app control', 20),
('Samsung 65-inch 4K TV', 16990000, 'Smart TV with a large 4K screen', 15),
('Keychron K8 Mechanical Keyboard', 2990000, 'Wireless mechanical keyboard for Mac/Win', 50),
('Logitech MX Master 3S Mouse', 2790000, 'Wireless mouse for professionals', 45),
('Anker 65W Fast Charger', 1290000, 'Fast charger with USB-C PD support', 70),
('iPhone 15 Pro Silicone Case', 590000, 'Official Apple silicone case', 100),
('JBL Charge 5 Speaker', 3990000, 'Waterproof Bluetooth speaker', 30),
('Xiaomi 4 Pro Air Purifier', 4990000, 'Smart air purifier with app control', 20),
('Smart Thermos Bottle', 990000, 'Thermos bottle with temperature display', 50),
('Nebula Capsule Mini Projector', 9990000, 'Compact home projector', 10);


INSERT INTO Product_Categories (product_id, category_id) VALUES
(1, 1), (2, 1), -- Smartphones
(3, 2), (4, 2), -- Laptops
(5, 3), (6, 3), -- Tablets
(7, 4), (8, 4), (9, 4), (10, 4), (13, 4), (14, 4), (15, 4), (16, 4), -- Accessories
(11, 5), (12, 5), (17, 5), (18, 5), (19, 5), (20, 5); -- Smart Home



INSERT INTO Carts (user_id) VALUES 
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

INSERT INTO Cart_items (cart_id, product_id, quantity) VALUES 
(1, 1, 1), (1, 3, 1),
(2, 2, 1), (2, 13, 2),
(3, 5, 1), (3, 9, 1),
(4, 7, 1), (4, 10, 1),
(5, 11, 1), (5, 15, 2);


INSERT INTO Promotion (code, discount, start_date, end_date, description) VALUES 
('SUMMER2023', 15.00, '2023-06-01', '2023-08-31', 'Summer sale 15% off'),
('VIP10', 10.00, '2023-01-01', '2023-12-31', 'VIP customer discount'),
('NEWYEAR', 20.00, '2023-12-20', '2024-01-10', 'New Year special');

INSERT INTO Orders (user_id, status, total) VALUES 
(1, 'delivered', 29990000),
(2, 'shipped', 25990000),
(3, 'pending', 22990000),
(4, 'delivered', 23990000),
(5, 'canceled', 5990000);

INSERT INTO Order_items (order_id, product_id, quantity, price) VALUES 
(1, 1, 1, 29990000),
(2, 2, 1, 25990000),
(3, 5, 1, 22990000),
(4, 7, 1, 23990000),
(5, 11, 1, 5990000);

INSERT INTO Payments (order_id, payment_method, amount, status) VALUES 
(1, 'Credit Card', 29990000, 'completed'),
(2, 'Bank Transfer', 25990000, 'completed'),
(3, 'COD', 22990000, 'pending'),
(4, 'Credit Card', 23990000, 'completed'),
(5, 'Bank Transfer', 5990000, 'failed');

INSERT INTO Promotion_Apply (order_id, promotion_id, status) VALUES 
(1, 1, 'applied'),
(2, 2, 'applied'),
(4, 3, 'applied');

INSERT INTO Review (order_item_id, user_id, rating, comment) VALUES 
(1, 1, 5, 'San pham tuyet voi, giao hang nhanh'),
(2, 2, 4, 'Tot nhưng gia hoi cao'),
(4, 4, 5, 'Rat hai long voi san pham');