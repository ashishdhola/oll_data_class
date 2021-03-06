1.Find out the products, which have been sold to 'Ivan Bayross'.

select CLIENT_MASTER.NAME,
	CLIENT_MASTER.CLIENTNO,
	SALES_ORDER.ORDERNO,
	SALES_ORDER_DETAILS.PRODUCTNO,
	PRODUCT_MASTER.DESCRIPTION
	FROM CLIENT_MASTER
	join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
	join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
	join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
	where CLIENT_MASTER.CLIENTNO = 'C00001'

OUTPUT:-
T-Shirts
Shirt
Cotton jeans
Denim Shirts
Lycra Top

3.List the ProductNo and Discription of constantly sold (i.g. rapidly moving) products.


select PRODUCT_MASTER.PRODUCTNO
,PRODUCT_MASTER.DESCRIPTION
,SALES_ORDER_DETAILS.QTYORDERD
FROM CLIENT_MASTER
join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
Where SALES_ORDER_DETAILS.QTYORDERD>5

OUTPUT:-
P00001	T-Shirts	10
P00001	T-Shirts	10
P00001	T-Shirts	10

4.Find the name of client who have purchased "Trousers".

select CLIENT_MASTER.NAME
,PRODUCT_MASTER.DESCRIPTION
FROM CLIENT_MASTER
join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
Where PRODUCT_MASTER.PRODUCTNO='P00005'

OUTPUT:-
Chhaya Bankar	Trousers

5.List the products and orders from customers who have ordered less then 5 units od 'Pull Overs'.

select PRODUCT_MASTER.DESCRIPTION
,SALES_ORDER_DETAILS.QTYORDERD
FROM CLIENT_MASTER
join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
Where SALES_ORDER_DETAILS.QTYORDERD<5	

OUTPUT:-
T-Shirts	4
Shirt	2
Cotton jeans	2
Jeans	3
Trousers	3
Pull Overs	4
Denim Shirts	2
Lycra Top	1
Shirts	1
Pull Overs	1

6.Find the products and their quantities for the orders placed by'ivan bayroos' AND 'Mamta Muzumdar'.

select CLIENT_MASTER.NAME
,PRODUCT_MASTER.DESCRIPTION
,SALES_ORDER_DETAILS.QTYORDERD	
FROM CLIENT_MASTER
join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
Where CLIENT_MASTER.NAME in ('ivan bayroos','Mamta Muzumdar')

OUTPUT:-
ivan bayroos	T-Shirts	4
ivan bayroos	Shirt	2
ivan bayroos	Cotton jeans	2
Mamta Muzumdar	T-Shirts	10
ivan bayroos	Denim Shirts	2
ivan bayroos	Lycra Top	1

7. the products and their quantities for the orders placed by ClientNo'C00001' and 'C00002'.

select CLIENT_MASTER.NAME
,PRODUCT_MASTER.DESCRIPTION
,SALES_ORDER_DETAILS.QTYORDERD	
FROM CLIENT_MASTER
join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
Where CLIENT_MASTER.CLIENTNO in ('C00001','C00002')

OUTPUT:-
ivan bayroos	T-Shirts	4
ivan bayroos	Shirt	2
ivan bayroos	Cotton jeans	2
Mamta Muzumdar	T-Shirts	10
ivan bayroos	Denim Shirts	2
ivan bayroos	Lycra Top	1




