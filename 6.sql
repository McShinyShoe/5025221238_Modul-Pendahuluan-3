-- 6
SELECT AVG(total_belanja_customer.Total_Belanja)
FROM (
    SELECT customer.*, IFNULL(SUM(jumlah_minuman * harga_minuman), 0) AS Total_Belanja
    FROM customer
    LEFT JOIN transaksi ON customer_id_customer = id_customer
    LEFT JOIN transaksi_minuman ON id_transaksi = tm_transaksi_id
    LEFT JOIN menu_minuman on tm_menu_minuman_id = id_minuman
    GROUP BY id_customer
    ORDER BY nama_customer
) AS total_belanja_customer;