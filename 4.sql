-- 4
SELECT pegawai.*
FROM pegawai
JOIN transaksi ON pegawai_nik = nik
JOIN customer ON customer_id_customer = id_customer
WHERE nama_customer IN ('Davi Liam', 'Sisil Triana', 'Hendra Asto');