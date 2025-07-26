/*
Question : Bulan apa yang memiliki volume perdagangan tertinggi?
    - Hitung total volume saham yang diperdagangkan per bulan
    - Kelompokkan berdasarkan bulan dan tahun
    - Mengapa? Menemukan waktu aktivitas pasar tertinggi, bisa berkaitan dengan laporan keuangan atau musim tertentu
*/

SELECT
    EXTRACT(MONTH FROM date) as month,
    sum(volume) as total_volume,
    round(avg(volume),0) as avg_volume
from google_stock
group BY
    EXTRACT(MONTH FROM date)
order by
    total_volume desc, avg_volume desc;
