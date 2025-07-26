/*
Question : Apakah terdapat kecenderungan harga saham naik di awal minggu atau justru di akhir minggu?
    - Ambil data hari Senin dan Jumat saja
    - Hitung rata-rata harga penutupan (Close) untuk masing-masing hari
    - Why? Mengungkap pola musiman mingguan yang dapat dijadikan dasar strategi trading
*/

-- use CTE's
with early_last_price as (
    SELECT  
        date,
        close,
        extract(DOW FROM date) as hari
    from
        google_stock
    WHERE
        EXTRACT(DOW FROM date) in (1, 5) -- 1 = senin, 5 = jum'at
)
SELECT
    hari,
    avg(close) as avg_closing_price
from 
    early_last_price
group BY
    hari
order BY
    avg_closing_price;