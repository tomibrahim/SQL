select SUM(orderdetails.quantityOrdered) as total_orderd , warehouses.warehouseName
from orderdetails join products on orderdetails.productCode = products.productCode join warehouses on products.warehouseCode = warehouses.warehouseCode
group by products.warehouseCode

