select a.accountid,a.accounttype,a.balance, t.transactionid,t.tranasactiontype,t.transactiondate,t.amount from accounts a inner join transactions t on t.accountid = a.accountid;
select a.accountid,a.accounttype,a.balance, t.transactionid,t.tranasactiontype,t.transactiondate,t.amount from accounts a inner join transactions t on t.accountid = a.accountid;
select a.accountid,a.accounttype,a.balance, t.transactionid,t.tranasactiontype,t.transactiondate,t.amount from accounts a inner join transactions t on t.accountid = a.accountid where t.tranasactiontype = "deposit";
select a.accountid,a.accounttype,a.balance, t.transactionid,t.tranasactiontype,t.transactiondate,t.amount from accounts a inner join transactions t on t.accountid = a.accountid where a.balance >=40000 order by a.balance desc;
select a.accountid,a.accounttype,a.balance, t.transactionid,t.tranasactiontype,t.transactiondate,t.amount from accounts a left join transactions t on t.accountid =  a.Accountid;
select a.accountid,a.accounttype,a.balance, t.transactionid,t.tranasactiontype,t.transactiondate,t.amount from accounts a right join transactions t on t.accountid= a.accountid;



select *from transactions;