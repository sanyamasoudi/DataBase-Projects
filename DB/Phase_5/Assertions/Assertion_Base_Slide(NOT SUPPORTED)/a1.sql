--This app does not support assertion
CREATE ASSERTION DateReceivedAwardCheck
CHECK ((SELECT Year(date_received) FROM Artist_Awards) > Year(birthdate) FROM Users);

