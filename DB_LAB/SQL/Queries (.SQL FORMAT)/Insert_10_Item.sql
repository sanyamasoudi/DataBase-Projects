-- database: :memory:
INSERT INTO Account (birthdate, password, Fname, Lname, phone_number, user_name) VALUES
('1990-01-01', 1234567890, 'John', 'Doe', 1234567890, 'johndoe'),
('1991-02-02', 2345678901, 'Jane', 'Smith', 2345678901, 'janesmith'),
('1992-03-03', 3456789012, 'Michael', 'Jones', 3456789012, 'michaeljones'),
('1993-04-04', 4567890123, 'Sarah', 'Williams', 4567890123, 'sarahwilliams'),
('1994-05-05', 5678901234, 'David', 'Brown', 5678901234, 'davidbrown'),
('1995-06-06', 6789012345, 'Jessica', 'Garcia', 6789012345, 'jessicagarcia'),
('1996-07-07', 7890123456, 'Matthew', 'Rodriguez', 7890123456, 'matthewrodriguez'),
('1997-08-08', 8901234567, 'Emily', 'Perez', 8901234567, 'emilyperez'),
('1998-09-09', 9012345678, 'Joshua', 'Kim', 9012345678, 'joshuakim'),
('1999-10-10', 10123456789, 'Anna', 'Nguyen', 10123456789, 'annannguyen'),

('2000-11-11', 11123456780, 'William', 'Chen', 11123456780, 'williamchen'),
('2001-12-12', 12123456781, 'Elizabeth', 'Lee', 12123456781, 'elizabethlee'),
('2002-01-01', 13123456782, 'Benjamin', 'Wang', 13123456782, 'benjaminwang'),
('2003-02-02', 14123456783, 'Abigail', 'Johnson', 14123456783, 'abigailjohnson'),
('2004-03-03', 15123456784, 'Samuel', 'Davis', 15123456784, 'samueldavis'),
('2005-04-04', 16123456785, 'Madison', 'Wilson', 16123456785, 'madisonwilson'),
('2006-05-05', 17123456786, 'Elijah', 'Anderson', 17123456786, 'elijahanderson'),
('2007-06-06', 18123456787, 'Isabella', 'Thomas', 18123456787, 'isabellathomas'),
('2008-07-07', 19123456788, 'Ethan', 'Jackson', 19123456788, 'ethanjackson'),
('2009-08-08', 20123456789, 'Olivia', 'White', 20123456789, 'oliviawhite');

INSERT INTO Customer (street, city, postcode ,birthdate , password, Fname, Lname, phone_number, user_name) VALUES
('123 Main Street','Anytown 1', 12345,'1990-01-01', 1234567890, 'John', 'Doe', 1234567890, 'johndoe'),
('123 Main Street','Anytown 1', 23056,'1991-02-02', 2345678901, 'Jane', 'Smith', 2345678901, 'janesmith'),
('123 Main Street','Anytown 2', 23456,'1992-03-03', 3456789012, 'Michael', 'Jones', 3456789012, 'michaeljones'),
('1011 Pine Street','Anytown 3', 45678,'1993-04-04', 4567890123, 'Sarah', 'Williams', 4567890123, 'sarahwilliams'),
('1213 Maple Street','Anytown 4', 56789,'1994-05-05', 5678901234, 'David', 'Brown', 5678901234, 'davidbrown'),
('1415 Birch Street','Anytown 5', 67890,'1995-06-06', 6789012345, 'Jessica', 'Garcia', 6789012345, 'jessicagarcia'),
('1617 Cedar Street','Anytown 7', 78901,'1996-07-07', 7890123456, 'Matthew', 'Rodriguez', 7890123456, 'matthewrodriguez'),
('1819 Cypress Street','Anytown 8', 89012,'1997-08-08', 8901234567, 'Emily', 'Perez', 8901234567, 'emilyperez'),
('2021 Oakwood Lane','Anytown 9', 90123, '1998-09-09', 9012345678, 'Joshua', 'Kim', 9012345678, 'joshuakim'),
('2021 Cedar Street','Anytown 1', 90123,'1999-10-10', 10123456789, 'Anna', 'Nguyen', 10123456789, 'annannguyen');

INSERT INTO Employee (salary, job_title, access_level, working_hour, birthdate, password, Fname, Lname, phone_number, user_name) VALUES
(20000, 'Waiter', 1, '09:00:00','2000-11-11', 11123456780, 'William', 'Chen', 11123456780, 'williamchen'),
(22000, 'Keeper', 1, '10:00:00','2001-12-12', 12123456781, 'Elizabeth', 'Lee', 12123456781, 'elizabethlee'),
(24000, 'Delivery', 2, '11:00:00','2002-01-01', 13123456782, 'Benjamin', 'Wang', 13123456782, 'benjaminwang'),
(26000, 'Keeper', 2, '12:00:00','2003-02-02', 14123456783, 'Abigail', 'Johnson', 14123456783, 'abigailjohnson'),
(28000, 'Manager', 3, '01:00:00','2004-03-03', 15123456784, 'Samuel', 'Davis', 15123456784, 'samueldavis'),
(30000, 'Chef', 1, '02:00:00','2005-04-04', 16123456785, 'Madison', 'Wilson', 16123456785, 'madisonwilson'),
(32000, 'Cashier', 1, '03:00:00', '2006-05-05', 17123456786, 'Elijah', 'Anderson', 17123456786, 'elijahanderson'),
(34000, 'Dishwasher', 2, '04:00:00','2007-06-06', 18123456787, 'Isabella', 'Thomas', 18123456787, 'isabellathomas'),
(38000, 'Chef', 1, '05:00:00','2008-07-07', 19123456788, 'Ethan', 'Jackson', 19123456788, 'ethanjackson'),
(38000, 'Chef', 3, '06:00:00', '2009-08-08', 20123456789, 'Olivia', 'White', 20123456789, 'oliviawhite');

INSERT INTO Comment (score, description, coment_ID, user_name) VALUES
(5, 'Great product!', 1, 'johndoe'),
(4, 'Good product, but could be better.', 2, 'janesmith'),
(3, 'Average product.', 3, 'michaeljones'),
(2, 'Poor product.', 4, 'sarahwilliams'),
(1, 'Terrible product!', 5, 'davidbrown'),
(5, 'Excellent service!', 6, 'jessicagarcia'),
(4, 'Good service, but could be faster.', 7, 'matthewrodriguez'),
(3, 'Average service.', 8, 'emilyperez'),
(2, 'Poor service.', 9, 'joshuakim'),
(1, 'Terrible service!', 10, 'annannguyen');

INSERT INTO ReserveTable (date, reservation_time, capacity, reserve_status, table_ID, user_name) VALUES
('2023-03-08', '18:00:00', 4, 1, 1, 'johndoe'),
('2023-03-09', '19:00:00', 6, 1, 2, 'janesmith'),
('2023-03-10', '20:00:00', 8, 1, 3, 'michaeljones'),
('2023-03-11', '21:00:00', 4, 1, 4, 'sarahwilliams'),
('2023-03-12', '22:00:00', 6, 1, 5, 'davidbrown'),
('2023-03-13', '18:00:00', 4, 0, 6, 'jessicagarcia'),
('2023-03-14', '19:00:00', 6, 0, 7, 'matthewrodriguez'),
('2023-03-15', '20:00:00', 8, 0, 8, 'emilyperez'),
('2023-03-16', '21:00:00', 4, 0, 9, 'joshuakim'),
('2023-03-17', '22:00:00', 6, 0, 10, 'annannguyen');

INSERT INTO Food (name, cost, food_ID, description, user_name, remain_number, menu_ID) VALUES
('Pizza', 10.00, 1, 'Delicious pizza with your choice of toppings.', 'johndoe', 10, 1),
('Hamburger', 8.00, 2, 'Juicy hamburger with your choice of toppings.', 'janesmith', 15, 1),
('French Fries', 5.00, 3, 'Crispy french fries served with your choice of dipping sauce.', 'michaeljones', 20, 1),
('Chicken Wings', 9.00, 4, 'Spicy or mild chicken wings served with your choice of dipping sauce.', 'sarahwilliams', 12, 1),
('Salad Shirazi', 7.00, 5, 'Fresh salad with your choice of toppings.', 'davidbrown', 18, 2),
('Egg', 12.00, 6, 'Delicious pasta with your choice of sauce.', 'jessicagarcia', 10, 3),
('Omelette', 15.00, 7, 'Grilled steak served with your choice of sides.', 'matthewrodriguez', 8, 3),
('Seafood', 14.00, 8, 'Fresh seafood cooked to perfection.', 'emilyperez', 10, 4),
('Sushi', 16.00, 9, 'Delicious sushi made with fresh ingredients.', 'joshuakim', 12, 4),
('Jelly', 6.00, 10, 'Sweet dessert to end your meal.', 'annannguyen', 15, 5);

INSERT INTO Menu (menu_ID, menu_type, user_name) VALUES
(1, 'FastFood', 'elizabethlee'),
(2, 'Salad', 'elizabethlee'),
(3, 'Brunch', 'elizabethlee'),
(4, 'Seafood', 'elizabethlee'),
(5, 'Dessert', 'elizabethlee'),
(6, 'Kids', 'abigailjohnson'),
(7, 'Vegan', 'abigailjohnson'),
(8, 'Gluten-Free','abigailjohnson'),
(9, 'Italian food', 'abigailjohnson'),
(10, 'Mediterranean', 'abigailjohnson');

INSERT INTO Factor (factor_ID, payment_status, date, total_cost, hour, user_name) VALUES
(1, 1, '2023-03-08', 100.00, '18:00:00', 'johndoe'),
(2, 0, '2023-03-09', 120.00, '19:00:00', 'janesmith'),
(3, 1, '2023-03-10', 140.00, '20:00:00', 'michaeljones'),
(4, 0, '2023-03-11', 160.00, '21:00:00', 'sarahwilliams'),
(5, 1, '2023-03-12', 180.00, '22:00:00', 'davidbrown'),
(6, 0, '2023-03-13', 200.00, '18:00:00', 'jessicagarcia'),
(7, 1, '2023-03-14', 220.00, '19:00:00', 'matthewrodriguez'),
(8, 0, '2023-03-15', 240.00, '20:00:00', 'emilyperez'),
(9, 1, '2023-03-16', 260.00, '21:00:00', 'joshuakim'),
(10, 0, '2023-03-17', 280.00, '22:00:00', 'annannguyen');

INSERT INTO Discount (discount_ID, factor_ID, discount_type, user_name) VALUES
(1, 1, 25, 'johndoe'),
(2, 2, 25, 'janesmith'),
(3, 3, 25, 'michaeljones'),
(4, 4, 50, 'sarahwilliams'),
(5, 5, 50, 'davidbrown'),
(6, 6,50, 'jessicagarcia'),
(7, 7, 50, 'matthewrodriguez'),
(8, 8, 75, 'emilyperez'),
(9, 9, 100, 'joshuakim'),
(10, 10,100, 'annannguyen');


