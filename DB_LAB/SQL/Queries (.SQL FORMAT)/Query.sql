

-- فیلتر کردن غذا بر اساس نوع 
SELECT name,cost,description,menu_type
FROM Food
JOIN Menu ON Food.menu_ID = Menu.menu_ID
ORDER BY menu_type;

-- جستجو غذا بر اساس نام
SELECT name,cost,description 
FROM Food 
WHERE name='Pizza';

-- فیلتر کردن میز بر اساس ظرفیت 
SELECT * 
FROM ReserveTable
WHERE reserve_status=1;

-- فیلتر کردن فاکتور بر اساس پرداخت شده یا نشده
SELECT * 
FROM Factor 
WHERE payment_status=0 ;

-- جستجوی پرسنل بر اساس نام کاربری 
SELECT * 
FROM Employee 
WHERE user_name='abigailjohnson';

-- دریافت حساب هایی که تلفن انها با یک شروع میشود و تاریخ تولد انها بعد از سال 2000 است
SELECT  *
FROM Account
WHERE phone_number 
LIKE '1%' 
AND birthdate>'2000-01-01';

-- دریافت و مرتب سازی مربوط به بیشترین تعداد مشتریان مربوط به کدام منطقه هستند
SELECT street, COUNT(*) AS count
FROM Customer
GROUP BY street
ORDER BY count DESC;

-- نام و نام خانوادگی و نام کاربری مشتریان وفاداری که مشمول تخفیف بالای بیست و پنج درصد مییاشند
SELECT Customer.Fname,Customer.Lname,Customer.user_name
FROM Factor
JOIN Discount ON Factor.factor_ID = Discount.factor_ID
JOIN Customer ON Factor.user_name=Customer.user_name
WHERE  Discount.discount_type > 25

-- نام و نام خانوادگی و نام کاربری, شماره تلفن مشتریان خاصی که مشمول تخفیف 100 درصد شده اند
SELECT Customer.Fname,Customer.Lname,Customer.user_name,Customer.phone_number
FROM Factor
JOIN Discount ON Factor.factor_ID = Discount.factor_ID
JOIN Customer ON Factor.user_name=Customer.user_name
WHERE  Discount.discount_type =100

-- تعداد دفعاتی که یک مشتری خاص خرید و پرداخت کرده
SELECT COUNT(*) as CountBuySth
FROM Customer
JOIN Factor ON Factor.user_name=Customer.user_name
WHERE Customer.user_name='johndoe' AND Factor.payment_status=1;

-- تعداد منوهایی که در حال حاضر مشتریان از انها غذا سفارش داده اند
SELECT COUNT(distinct menu_type) as CountMenuType
FROM Customer
JOIN Food ON Customer.user_name=Food.user_name
JOIN Menu ON Food.menu_ID = Menu.menu_ID;

-- تعداد باقی مانده تمام غذا ها را اپدیت کرده و به اندازه یک واحد افزایش میدهد
GO

CREATE PROCEDURE UPDATE_REMAIN_NUMBER_OF_FOOD
@FOOD_ID TINYINT,
@REMAIN_NUMBER TINYINT
AS
BEGIN
	UPDATE Food
	SET Food.remain_number= Food.remain_number + @REMAIN_NUMBER
	WHERE Food.food_ID=@FOOD_ID;
END;

GO
DECLARE FOOD_CURSOR CURSOR FOR
SELECT Food.food_ID 
FROM Food;

OPEN FOOD_CURSOR;
DECLARE @FOOD_ID TINYINT;
FETCH NEXT FROM FOOD_CURSOR INTO @FOOD_ID;
WHILE @@FETCH_STATUS=0
BEGIN
    EXECUTE UPDATE_REMAIN_NUMBER_OF_FOOD @FOOD_ID,1;
	FETCH NEXT FROM FOOD_CURSOR INTO @FOOD_ID;
END;
CLOSE FOOD_CURSOR;
DEALLOCATE FOOD_CURSOR;

-- اخراج کردن اشپزانی با سطح دسترسی پایین 3 و حذف کردن حساب کاربری مربوطشان
GO

CREATE FUNCTION GET_EMPLOYEE_TO_KICK_OUT()
RETURNS TABLE
AS
RETURN (
    SELECT user_name
    FROM Employee
    WHERE job_title = 'Chef' AND access_level = 3
);
GO

DELETE FROM Account
WHERE user_name IN (SELECT user_name FROM dbo.GET_EMPLOYEE_TO_KICK_OUT());


DELETE FROM Employee
WHERE user_name IN (SELECT user_name FROM dbo.GET_EMPLOYEE_TO_KICK_OUT());
GO

-- اضافه کردن یک منو جدید به رستوران توسط  انبار دار با سطح دسترسی بالا 1
GO

DECLARE @ID TINYINT;
DECLARE @UserName NVARCHAR(256);

SELECT @ID = ISNULL(MAX(menu_ID), 0) + 1 FROM Menu;


SELECT TOP 1 @UserName = user_name FROM Employee
WHERE job_title = 'Keeper' AND access_level = 1;

INSERT INTO Menu (menu_ID, menu_type, user_name)
VALUES (@ID, 'new menu type', @UserName);
-- اعمال کردن تخفیف به روی همه فاکتور های مشمول تخفیف شده و اپدیت کرن هزینه کل پرداخت 
GO

DECLARE FACTOR_CURSOR CURSOR FOR	
SELECT factor_ID
FROM Factor;

OPEN FACTOR_CURSOR;

DECLARE @FACTOR_ID TINYINT;
DECLARE @DISCOUNT_TYPE TINYINT;

FETCH NEXT FROM FACTOR_CURSOR INTO @FACTOR_ID;

WHILE @@FETCH_STATUS = 0
BEGIN
	SELECT @DISCOUNT_TYPE = discount_type
	FROM Discount 
	WHERE factor_ID = @FACTOR_ID;

	IF @DISCOUNT_TYPE IS NOT NULL
	BEGIN
		UPDATE Factor
		SET total_cost = (total_cost * (100 - @DISCOUNT_TYPE)) / 100
		WHERE factor_ID = @FACTOR_ID;
	END;

	FETCH NEXT FROM FACTOR_CURSOR INTO @FACTOR_ID;
END;

CLOSE FACTOR_CURSOR;
DEALLOCATE FACTOR_CURSOR;

-- جلوگیری از چندبار حساب باز کردن کاربران متفاوت با شماره تلفن های یکسان
CREATE TRIGGER PREVENT_DUPLICATE_PHONENUMBER
ON Account
AFTER INSERT 
AS
BEGIN
	IF EXISTS(
		SELECT 1 
		FROM Account 
		JOIN inserted ON inserted.phone_number=Account.phone_number
		AND Account.user_name != inserted.user_name)
		BEGIN
				ROLLBACK TRANSACTION;
		END;
END;