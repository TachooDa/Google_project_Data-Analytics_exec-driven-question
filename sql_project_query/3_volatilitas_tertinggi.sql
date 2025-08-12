/*
Question : Hari apa saja dalam seminggu yang menunjukkan fluktuasi harga (volatilitas) saham paling signifikan?
    - Tambahkan kolom High - Low sebagai ‘volatilitas’
    - Mencari rata-rata dari high - low sebagai nilai 'volatilitas' nya
    - Urutkan berdasarkan nilai tertinggi
    - Why? Mengungkap hari-hari penting dengan pergerakan besar, kemungkinan pengaruh berita/kejadian
*/

SELECT
    date,
    high,
    low,
    (high - low) as volatilitas,
    avg(high - low) as avg_volatilitas
FROM
    google_stock
group BY
    date,
    high,
    low
ORDER BY
    volatilitas DESC, 
    date desc
    limit 20;

-- use CTE's
    with avg_vol as(
    SELECT
        avg(high - low) as avg_volatilitas
    FROM
        google_stock
    )
    SELECT
        g.date,
        g.high,
        g.low,
        (g.high - g.low) as volatilitas,
        av.avg_volatilitas
    FROM
        google_stock as g,
        avg_vol as av
    order BY
        g.date DESC
    limit 10;