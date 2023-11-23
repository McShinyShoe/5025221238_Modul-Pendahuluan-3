-- 10
SELECT nama_customer, nama_minuman, SUM(jumlah_minuman) FROM transaksi_minuman
JOIN transaksi ON id_transaksi = tm_transaksi_id
JOIN customer ON customer_id_customer = id_customer
JOIN menu_minuw wman ON tm_menu_minuman_id = id_minuman
WHERE nama_customer LIKE 'S%'
GROUP BY nama_customer, nama_minuman