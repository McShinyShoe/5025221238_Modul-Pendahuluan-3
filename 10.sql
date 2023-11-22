-- 10
SELECT nama_customer, nama_minuman, COUNT(*) FROM transaksi_minuman
JOIN transaksi ON id_transaksi = tm_transaksi_id
JOIN customer ON customer_id_customer = id_customer
JOIN menu_minuman ON tm_menu_minuman_id = id_minuman
WHERE nama_customer LIKE 'S%'
GROUP BY nama_customer, nama_minuman