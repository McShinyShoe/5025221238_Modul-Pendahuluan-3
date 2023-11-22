-- 9
SELECT COUNT(*) FROM (SELECT DISTINCT customer_id_customer FROM transaksi_minuman
JOIN transaksi ON id_transaksi = tm_transaksi_id
WHERE tm_menu_minuman_id = (SELECT id_minuman FROM menu_minuman WHERE nama_minuman = 'Latte')) AS A;