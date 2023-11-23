-- 5
SELECT MONTH(tanggal_transaksi) AS BULAN, YEAR(tanggal_transaksi) AS TAHUN, SUM(jumlah_minuman) AS JUNLAH_CUP
FROM transaksi_minuman
JOIN transaksi ON tm_transaksi_id = id_transaksi
GROUP BY BULAN, TAHUN
ORDER BY TAHUN DESC, BULAN ASC;