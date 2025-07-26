select 
    date,
    max(open) as pembukaan_harga_tertinggi,
    max(volume) as volume_transaksi_terbesar,
    max(close) as harga_penutupan_tertinggi
from 
google_stock
group BY
    date
order BY
    date desc,
   volume_transaksi_terbesar desc
    limit 7;