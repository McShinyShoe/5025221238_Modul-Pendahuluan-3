-- 3 
SELECT customer.*, IFNULL(SUM(jumlah_minuman * harga_minuman), 0) AS 'Total_Belanja'
FROM customer
LEFT JOIN transaksi ON customer_id_customer = id_customer
LEFT JOIN transaksi_minuman ON id_transaksi = tm_transaksi_id
LEFT JOIN menu_minuman on tm_menu_minuman_id = id_minuman
WHERE tanggal_transaksi >= "2023-10-03"
AND tanggal_transaksi <= "2023-10-22"
GROUP BY id_customer
ORDER BY nama_customer;