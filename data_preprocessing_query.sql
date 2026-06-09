-- 1. Gunakan database dengan nama 003_Airbnb
USE [003_Airbnb];

-- 2. Tampilkan semua data tabel ini, untuk pelajari tabelnya secara sekilas
SELECT * from ab_master;

-- 3. Tampilkan jumlah datanya untuk mengetahui total data ini (buat data understanding)
SELECT COUNT (*) AS 'Total Data' from ab_master;

-- 4. Tampilkan missing values/null setiap kolom
SELECT
    SUM(CASE WHEN id IS NULL THEN 1 ELSE 0 END) AS id_nulls,
    SUM(CASE WHEN name IS NULL THEN 1 ELSE 0 END) AS name_nulls,
    SUM(CASE WHEN host_id IS NULL THEN 1 ELSE 0 END) AS host_id_nulls,
    SUM(CASE WHEN host_name IS NULL THEN 1 ELSE 0 END) AS host_name_nulls,
    SUM(CASE WHEN neighbourhood_group IS NULL THEN 1 ELSE 0 END) AS neighbourhood_group_nulls,
    SUM(CASE WHEN neighbourhood IS NULL THEN 1 ELSE 0 END) AS neighbourhood_nulls,
    SUM(CASE WHEN latitude IS NULL THEN 1 ELSE 0 END) AS latitude_nulls,
    SUM(CASE WHEN longitude IS NULL THEN 1 ELSE 0 END) AS longitude_nulls,
    SUM(CASE WHEN room_type IS NULL THEN 1 ELSE 0 END) AS room_type_nulls,
    SUM(CASE WHEN price IS NULL THEN 1 ELSE 0 END) AS price_nulls,
    SUM(CASE WHEN minimum_nights IS NULL THEN 1 ELSE 0 END) AS minimum_nights_nulls,
    SUM(CASE WHEN number_of_reviews IS NULL THEN 1 ELSE 0 END) AS number_of_reviews_nulls,
    SUM(CASE WHEN last_review IS NULL THEN 1 ELSE 0 END) AS last_review_nulls,
    SUM(CASE WHEN reviews_per_month IS NULL THEN 1 ELSE 0 END) AS reviews_per_month_nulls,
    SUM(CASE WHEN calculated_host_listings_count IS NULL THEN 1 ELSE 0 END) AS calculated_host_listings_count_nulls,
    SUM(CASE WHEN availability_365 IS NULL THEN 1 ELSE 0 END) AS availability_365_nulls
FROM ab_master;

-- 5. Tampilkan duplicate values pada kolom id
SELECT id, COUNT(id) AS id_duplicate_count
FROM ab_master
GROUP BY id
HAVING COUNT(ID) > 1;

-- 6. Tampilkan Outlier Values
   -- Cek outlier values pada column price
	SELECT id, price
	FROM ab_master
	WHERE price = 0;

   -- Cek outlier value pada saat terdapat review tapi last_review dan reviews_per_month itu null
	SELECT id, number_of_reviews, last_review, reviews_per_month
	FROM ab_master
	WHERE last_review IS NULL AND reviews_per_month IS NULL AND number_of_reviews > 0;

-- 7. Delete Outlier Values
   -- Delete outlier values pada saat price = 0
   DELETE FROM ab_master
   WHERE price = 0;

-- 8. Ubah semua format data pada column reviews_per_month menjadi 2 angka dibelakang koma
   ALTER TABLE ab_master
   ALTER COLUMN reviews_per_month DECIMAL(10,2);