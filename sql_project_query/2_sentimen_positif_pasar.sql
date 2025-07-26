/*
Question : Seberapa sering harga saham ditutup lebih tinggi dari pembukaannya?
    - Hitung jumlah hari di mana Close > Open
    - Bandingkan dengan total hari untuk dapatkan rasio
    - Mengapa? Menunjukkan seberapa sering sentimen pasar positif
*/
SELECT
    COUNT(date) as jumlah_hari_harga_naik,
    open,
    close
from 
    google_stock
WHERE   
    close > open
group BY
    close, open
order BY
    close desc, open desc limit 20;