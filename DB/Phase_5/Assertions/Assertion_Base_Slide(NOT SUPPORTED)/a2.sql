--This app does not support assertion
CREATE ASSERTION a2
CHECK ((SELECT old_age FROM Non_Purchasble_Work) > 70);




CREATE ASSERTION a3
CHECK ((SELECT registration_time FROM Orders) > 70);
