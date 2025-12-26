select p.product_id, 
   round(sum(u.units * p.price)/sum(u.units), 2) as average_price
from Prices p
left join UnitsSold u on u.product_id = p.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY 
    p.product_id;