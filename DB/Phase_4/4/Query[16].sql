-- اسم تمامی اثار غبر قابل خریداری که بیشتر از 100 سال قدمت دارند
SELECT ArtworkName
FROM Non_Purchasble_Work
JOIN ArtWork ON ArtWork.ArtworkCode=Non_Purchasble_Work.Artworkcode
WHERE old_age>100;