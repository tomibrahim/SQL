select sum((orderdetails.quantityOrdered)*(orderdetails.priceEach))as total_seling_amount ,warehouses.warehouseName
from
orderdetails join products on orderdetails.productCode = products.productCode join warehouses on products.warehouseCode = warehouses.warehouseCode
group by products.warehouseCode