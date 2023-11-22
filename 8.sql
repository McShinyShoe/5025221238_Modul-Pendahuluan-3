-- 8
SELECT customer.* FROM customer
LEFT JOIN membership ON m_id_customer = id_customer
WHERE m_id_customer IS NULL;