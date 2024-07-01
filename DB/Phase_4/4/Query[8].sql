-- نام کاربری تمام هنرمندانی که اثر غیرقابل خریداری دارند
SELECT Artist.UserName
FROM Artist
JOIN ArtWork ON ArtWork.UserName=Artist.UserName
JOIN Non_Purchasble_Work ON Non_Purchasble_Work.Artworkcode=ArtWork.ArtworkCode