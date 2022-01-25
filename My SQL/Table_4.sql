--create table SALES_ORDER(ORDERNO Varchar(6) Primary Key,CLIENTNO varchar(6)Foreign Key references CLIENTNO of CLIENT_MASTER table,ORDERDATE Date Not Null,DELYADDR Varchar(25),SALESMANNO varchar(6) Foreign Key references SALESMANNO of SALESMAN_MASTER table,DELYTYPE Char(1),BILLYN Char(1),DELYDATE Date,ORDERSTATUS Varchar(10));
--select * from SALES_ORDER
--insert into SALES_ORDER values ('019001','C00001','12-june-04','S00001','F','N','20-july-02','In Process');
--insert into SALES_ORDER values ('019002','C00002','25-june-04','S00002','P','N','27-June-02','Cancelled');
--insert into SALES_ORDER values ('046865','C00003','18-fab-04','S00003','F','Y','20-Fab-02','Fulfilled');
--insert into SALES_ORDER values ('019003','C00001','03-April-04','S00001','F','Y','07-Apr-02','Fulfilled');
--insert into SALES_ORDER values ('046866','C00004','20-May-04','S00002','P','N','22-May-02','Cancelled');
--insert into SALES_ORDER values ('019008','C00005','24-May-04','S00004','F','N','26-July-02','In Process');
drop table SALES_ORDER;