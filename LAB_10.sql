-----    LAB_10

create view high_balance_accounts as select accountid, accounttype,balance,customerid from accounts where balance > 30000;
show tables;
select * from high_balance_accounts;
create or replace view high_balance_accounts as select a.accountid,a.accounttype,a.balance,a.customerid,t.transactionid,t.transactiondate,t.amount from accounts a inner join transactions t on a.Accountid = t.accountid where balance >30000;  
create or replace view high_balance_accounts as select * from accounts as a inner join transactions as t on a.Accountid = t.accountid where balance >30000;
select  accountid,accounttype,balance,customerid,transactionid,transactiondate,amount from high_balance_accounts order by balance desc;
