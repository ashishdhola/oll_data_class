--select *from CLIENT_MASTER Where NAME like '_a%'
--select *from CLIENT_MASTER Where CITY like 'M%'
--select *from CLIENT_MASTER Where CITY in('Banglore','Manglore')
--select *from CLIENT_MASTER  Where BALDUE >=5000
--select * from SALES_ORDER Where CLIENTNO = 'C00001' or CLIENTNO = 'C00002'
--select NAME , CITY, STATE from CLIENT_MASTER Where STATE not in('Maharastra') 


--11-01-2022
--Joint quary
--1.select CLIENT_MASTER.NAME,
--	CLIENT_MASTER.CLIENTNO,
--	SALES_ORDER.ORDERNO,
--	SALES_ORDER_DETAILS.PRODUCTNO,
--	PRODUCT_MASTER.DESCRIPTION
--	FROM CLIENT_MASTER
--	join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
--	join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
--	join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
--	where CLIENT_MASTER.CLIENTNO = 'C00001'

--3.
--select PRODUCT_MASTER.PRODUCTNO
--,PRODUCT_MASTER.DESCRIPTION
--,SALES_ORDER_DETAILS.QTYORDERD
--FROM CLIENT_MASTER
--join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
--join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
--join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
--Where SALES_ORDER_DETAILS.QTYORDERD>5
	
--4.
--select CLIENT_MASTER.NAME
--,PRODUCT_MASTER.DESCRIPTION
--FROM CLIENT_MASTER
--join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
--join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
--join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
--Where PRODUCT_MASTER.PRODUCTNO='P00005'

--5.
--select PRODUCT_MASTER.DESCRIPTION
--,SALES_ORDER_DETAILS.QTYORDERD
--FROM CLIENT_MASTER
--join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
--join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
--join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
--Where SALES_ORDER_DETAILS.QTYORDERD<5	

--6.
--select CLIENT_MASTER.NAME
--,PRODUCT_MASTER.DESCRIPTION
--,SALES_ORDER_DETAILS.QTYORDERD	
--FROM CLIENT_MASTER
--join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
--join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
--join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
--Where CLIENT_MASTER.NAME in ('ivan bayroos','Mamta Muzumdar')


--7.
--select CLIENT_MASTER.NAME
--,PRODUCT_MASTER.DESCRIPTION
--,SALES_ORDER_DETAILS.QTYORDERD	
--FROM CLIENT_MASTER
--join SALES_ORDER ON CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
--join SALES_ORDER_DETAILS ON SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
--join PRODUCT_MASTER ON  SALES_ORDER_DETAILS.PRODUCTNO=PRODUCT_MASTER.PRODUCTNO
--Where CLIENT_MASTER.CLIENTNO in ('C00001','C00002')


