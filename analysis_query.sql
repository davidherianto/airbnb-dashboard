-- 1. Gunakan database dengan nama 003_Airbnb
USE [003_Airbnb];

-- 2. Tampilkan semua data tabel ini, untuk pelajari tabelnya secara sekilas
SELECT * from ab_master;

-- 3. Menampilkan distribusi listing Airbnb di NYC berdasarkan tipe properti
SELECT room_type AS 'Tipe Properti', count(id) AS 'Total Listing' 
FROM ab_master
GROUP BY room_type
ORDER BY 'Total Listing' DESC;

-- 4. Menampilkan distribusi listing Airbnb di NYC berdasarkan Borough (neighbourhood_group)
SELECT neighbourhood_group AS 'Borough', count(id) AS 'Total Listing' 
FROM ab_master
GROUP BY neighbourhood_group
ORDER BY 'Total Listing' DESC;

-- 5. Menampilkan distribusi harga (average price) berdasarkan Borough (neighbourhood_group)
SELECT neighbourhood_group AS 'Borough', AVG(price) AS 'Average Price' 
FROM ab_master
GROUP BY neighbourhood_group
ORDER BY 'Average Price' DESC;

-- 6. Menampilkan distribusi harga (average price) berdasarkan tipe properti
SELECT room_type AS 'Tipe Properti', AVG(price) AS 'Average Price' 
FROM ab_master
GROUP BY room_type
ORDER BY 'Average Price' DESC;