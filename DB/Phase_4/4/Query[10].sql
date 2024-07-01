-- اسم تمام اثار هنری که تا حالا در لیست علاقه مندی ها هیچکس نبوده
SELECT ArtworkName
FROM ArtWork
WHERE ArtWork.ArtworkCode NOT IN
(
	SELECT favorite
	FROM Users_Favorites
);
