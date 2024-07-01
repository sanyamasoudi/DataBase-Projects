--This app does not support assertion so for our project we used check clause;
ALTER TABLE dbo.Review
ADD CONSTRAINT ScoreCheck CHECK (Score>=1 AND Score<= 5);

--The INSERT statement conflicted with the CHECK constraint "ScoreCheck".
INSERT INTO dbo.Review(ReviewID,score,review_text) VALUES
('R17',10,'GOOD');

