SELECT customer.customer_name,CAST(invoice.total_price AS DECIMAL(10,6))amount FROM customer, invoice  
WHERE invoice.customer_id=customer.id AND invoice.total_price<=(SELECT (0.25*avg(invoice.total_price)) FROM invoice ) 
ORDER BY amount DESC
