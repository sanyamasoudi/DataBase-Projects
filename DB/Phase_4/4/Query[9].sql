-- نام کاربری تمام هنرمندان و مرتب کردن صعودی براساس میانگین قیمت اثار قابل فروش متعلق به انها 
SELECT Artist.UserName ,  AVG(Purchasble_Work.price) AS AVG_Purchasble_Work
FROM Artist
JOIN ArtWork ON ArtWork.UserName=Artist.UserName
JOIN Purchasble_Work ON Purchasble_Work.Artworkcode=ArtWork.ArtworkCode
GROUP BY Artist.UserName
ORDER BY AVG_Purchasble_Work ASC;
