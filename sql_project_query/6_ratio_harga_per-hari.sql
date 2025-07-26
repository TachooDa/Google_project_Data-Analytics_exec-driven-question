/*
Question : Dalam sehari perdagangan, apakah saham Google lebih sering mengalami kenaikan atau penurunan harga?
    - Bandingkan jumlah hari di mana Close > Open vs Close < Open
    - Hitung persentasenya dari total hari perdagangan
    - Why? Mengukur dominasi sentimen pasar dalam jangka panjang
*/
with status_per_hari as (
SELECT
    date,
    CASE
        when close > open then 'Naik'
        when close < open then 'Turun'
        else 'Tidak Berubah'
    END as arah_harga
from 
    google_stock
)
SELECT
    arah_harga,
    count(*) as jumlah_hari,
    round(100.0 * count(*) / (select count(*) from google_stock), 2) as persentase
from 
    status_per_hari
group by 
    arah_harga
order by
    persentase desc;