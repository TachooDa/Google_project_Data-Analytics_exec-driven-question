/*
Question : Bagaimana tren rata-rata harga penutupan saham Google dari waktu ke waktu?
    - Hitung rata-rata harga penutupan (Close) per bulan dan tahun
    - Gunakan fungsi waktu (YEAR, MONTH) untuk mengelompokkan
    - Mengapa? Memahami tren pergerakan jangka panjang saham Google
*/

SELECT
    EXTRACT(YEAR FROM date) as year,
    EXTRACT(MONTH FROM date) as month, 
    avg(close) as avg_penutupan_harga
FROM
    google_stock
group BY
     EXTRACT(YEAR FROM date), 
     EXTRACT(MONTH FROM date)
order BY
  year desc, month desc
  limit 20;