-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select oder.oID , oder.Oder_date , product.pPrice from orderdetail
join product on orderdetail.Product_id = product.Product_id
join oder on orderdetail.oID = oder.oID;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select customer.Name , product.pName from oder
join customer on customer.Customer_id = oder.Customer_id
join orderdetail on orderdetail.oID = oder.oID
join product on orderdetail.Product_id = product.Product_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT Name 
FROM customer
LEFT JOIN oder ON customer.Customer_id = oder.Customer_id
WHERE oder.Customer_id IS NULL;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn  
select oder.oID , oder.Oder_date , sum(odQTY * Oder_total_Price) as total_price from oder 
join orderdetail on orderdetail.oID = oder.oID 
group by oder.oID;





















