
select * from transactions where amount > (select avg(amount) from transactions);
select * from transactions;
select accountid,accounttype,balance,customerid from accounts where balance > (select avg(balance) from accounts order by balance desc);
select accountid,accounttype,balance,customerid from accounts where accountid in(select Accountid from transactions where tranasactiontype = "deposit");
select accountid,accounttype,balance,customerid from accounts where balance = (select max(balance)from accounts);