select count(orders.customerNumber), warehouses.warehouseName
from
orderdetails join orders
join products on orderdetails.productCode = products.productCode 
join warehouses on products.warehouseCode = warehouses.warehouseCode where orderdetails.orderNumber = orders.orderNumber
group by warehouses.warehouseCode