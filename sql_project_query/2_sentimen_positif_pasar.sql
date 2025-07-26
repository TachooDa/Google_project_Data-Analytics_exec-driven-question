/*
Question : Seberapa sering saham Google ditutup dengan harga lebih tinggi dibanding saat pembukaan?
    - Hitung jumlah hari di mana Close > Open
    - Bandingkan dengan total hari untuk dapatkan rasio
    - Why? Menunjukkan seberapa sering sentimen pasar positif
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