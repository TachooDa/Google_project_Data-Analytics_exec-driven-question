select * FROM google_stock 
order BY
    date desc;

/*
    Penjelasan untuk penggunaan kolom pada google_stock_data :
    dipisah menjada dua key(key dimension dan key matrix)
    - key dimension: date (waktu transaksi)
    - key matrix: open (Harga pembukaan saha),
                    close (harga penutupan saham),
                    high (harga tertinggi saham),
                    low (harga terendah saham),
                    volume (volume perdagangan saham)
    
*/