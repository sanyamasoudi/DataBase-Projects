select TOP(1)*
from dbo.Orders as o , dbo.Purchasble_Work as p , dbo.Cart as c, dbo.ArtWork as a
where o.tracking_code = c.tracking_code AND p.cart_code = c.cart_code  AND a.ArtworkCode = p.ArtworkCode
ORDER BY o.total_price DESC;
--the most expensive artwork that have been sold 