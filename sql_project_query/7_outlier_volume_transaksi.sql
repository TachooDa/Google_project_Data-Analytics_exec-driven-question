/*
Question : Apakah terdapat hari dengan volume transaksi tidak wajar (outlier)?
    - Hitung rata-rata dan standar deviasi dari volume
    - Temukan hari dengan volume sangat tinggi (misalnya Z-score > 2)
    - Mengapa? Untuk mendeteksi anomali aktivitas pasar yang mungkin disebabkan oleh kejadian luar biasa
*/
with statistik_v as (
SELECT
    avg(volume) as avg_volume,
    stddev_pop(volume) as standar_deviasi_volume
FROM
    google_stock
),
z_score_v as (
    select
        date,
        volume,
        (volume - sv.avg_volume) / sv.standar_deviasi_volume as z_score
    from
        google_stock as g,
        statistik_v as sv
    
)
select *
from
    z_score_v
where
    z_score > 2
order by
date desc,
    z_score desc;

    
