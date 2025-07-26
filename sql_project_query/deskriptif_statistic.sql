SELECT 
    date,
    MIN(open) AS harga_pembukaan_terendah,
    MAX(open) AS harga_pembukaan_tertinggi,
    ROUND(AVG(open)::numeric, 2) AS rata_rata_pembukaan,
    MIN(close) AS harga_penutupan_terendah,
    MAX(close) AS harga_penutupan_tertinggi,
    ROUND(AVG(close)::numeric, 2) AS rata_rata_penutupan,
    MAX(volume) AS volume_terbesar,
    MIN(volume) AS volume_terendah,
    ROUND(AVG(volume)::numeric, 0) AS rata_rata_volume
FROM 
    google_stock
GROUP BY 
    date
ORDER BY 
    date DESC
LIMIT 10;
