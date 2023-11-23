-- 2
SELECT id_transaksi, SUM(harga_minuman * jumlah_minuman) AS 'TOTAL_HARGA'
FROM transaksi
JOIN transaksi_minuman ON id_transaksi = tm_transaksi_id
JOIN menu_minuman ON tm_menu_minuman_id = id_minuman
GROUP BY id_transaksi;