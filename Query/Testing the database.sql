-- 1. INTEGRITY ISSUE
--select * from suppliers_table_sp;
delete from suppliers_table_sp
where supplier_id in (1,2,33);


--UPDATE
UPDATE CUSTOMER_TABLE_SP 
SET CUST_NUM = '932654875999' WHERE CUST_ID=2;

--INSERT
INSERT INTO CUSTOMER_TABLE_SP(CUST_ID, MEMBERSHIP_TYPE, CUST_EMAIL, CUST_NUM, ADDRESS, DOB, ANNIVERSARY_DATE, CUST_FIRST_NAME, CUST_LAST_NAME) VALUES ('15', 'GOLD', 'GOLD@ABC', '1010101010', 'ABC', TO_DATE('2002-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2014-12-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'ABC', 'ABC');

--successfull testing of database
--update

select * from INVENTORY_TABLE_SP
ORDER BY MAG_ID DESC;

update  INVENTORY_TABLE_SP
set PRICE=30
where MAG_ID=1;
--SUCCESSFULL INSERT
insert into INVENTORY_TABLE_SP
values (13,'SAURABHS WONDERLAND',98,80,456,TO_DATE('31-JAN-17'),'NO');


