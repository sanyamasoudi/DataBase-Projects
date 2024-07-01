select c.UserName
from dbo.Cart as c , dbo.Orders as o
where o.tracking_code = c.tracking_code AND o.total_price > 200;
-- the Name of buyers that has spent more than 200 dollars;