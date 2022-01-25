--create table PRODUCT_MASTER(PRODUCTNO Varchar(6), DESCRIPTION Varchar(15),PROFITPERSENTAGE DEC(4,2),UNITEMASURE varchar(10),QTYONHAND numeric(8),RECORDERLVL numeric(8),SELLPRICE DEC(8,2),COSTPRICE DEC(8,2) );
--select * from PRODUCT_MASTER;
--insert into PRODUCT_MASTER Values('P00001','T-Shirts','5','Piece','200','50','350','250');
--insert into PRODUCT_MASTER Values('P00002','Shirt','6','Piece','150','50','500','350');
--insert into PRODUCT_MASTER Values('P00003','Cotton jeans','5','Piece','100','20','600','450');
--insert into PRODUCT_MASTER Values('P00004','Jeans','5','Piece','100','20','750','500');
--insert into PRODUCT_MASTER Values('P00005','Trousers','2','Piece','150','50','850','550');
--insert into PRODUCT_MASTER Values('P00006','Pull Overs','2.5','Piece','80','30','700','450');
--insert into PRODUCT_MASTER Values('P00001','Denim Shirts','4','Piece','100','40','350','250');
--insert into PRODUCT_MASTER Values('P00001','Lycra Top','5','Piece','70','30','300','175');
--insert into PRODUCT_MASTER Values('P00001','Shirts','5','Piece','75','30','450','300');
--delete from PRODUCT_MASTER where CLIENTNO = 'C00001';


--Select DESCRIPTION from PRODUCT_MASTER;

--drop table PRODUCT_MASTER;



create table PRODUCT_MASTER(PRODUCTNO Varchar(6) primary key , DESCRIPTION Varchar(15) not null,PROFITPERSENTAGE DEC(4,2) not null,UNITEMASURE varchar(10) not null,QTYONHAND numeric(8) not null,RECORDERLVL numeric(8) not null,SELLPRICE DEC(8,2) not null,COSTPRICE DEC(8,2)  not null);
insert into PRODUCT_MASTER Values('P00001','T-Shirts','5','Piece','200','50','350','250');
insert into PRODUCT_MASTER Values('P00002','Shirt','6','Piece','150','50','500','350');
insert into PRODUCT_MASTER Values('P00003','Cotton jeans','5','Piece','100','20','600','450');
insert into PRODUCT_MASTER Values('P00004','Jeans','5','Piece','100','20','750','500');
insert into PRODUCT_MASTER Values('P00005','Trousers','2','Piece','150','50','850','550');
insert into PRODUCT_MASTER Values('P00006','Pull Overs','2.5','Piece','80','30','700','450');
insert into PRODUCT_MASTER Values('P00007','Denim Shirts','4','Piece','100','40','350','250');
insert into PRODUCT_MASTER Values('P00008','Lycra Top','5','Piece','70','30','300','175');
insert into PRODUCT_MASTER Values('P00009','Shirts','5','Piece','75','30','450','300');

