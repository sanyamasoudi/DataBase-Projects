-- میانگین پول موجود در کیف پول هنرمندان و خریداران
SELECT AVG(Artist.wallet) AS Artist_wallet
FROM Artist

SELECT AVG(Buyer.wallet) AS Buyer_wallet
FROM Buyer