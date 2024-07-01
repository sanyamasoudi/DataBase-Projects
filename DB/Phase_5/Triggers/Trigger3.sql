CREATE TRIGGER trg_ValidateReviewScore
ON Review
AFTER INSERT
AS
BEGIN
    IF NOT (SELECT score FROM inserted) BETWEEN 1 AND 5
    BEGIN
        RAISERROR ('Review score must be between 1 and 5.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;

-- We Defined Constraint in Create Review Table
-- Now We Drop Constraint To Show Trigger Worked Correctly
ALTER TABLE dbo.Review
DROP CONSTRAINT [CK__Review__score__6FE99F9F];

INSERT INTO REVIEW VALUES
(17,10,'GOOD');