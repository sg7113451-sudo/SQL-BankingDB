select loanid,customerid,loanamount,rank() over (order by loanamount desc)as loanrank from loans;
select * from loans;
select loanid,customerid,loanamount,dense_rank() over (order by loanamount desc)as denserank from loans;
select loanid,customerid,loanamount,row_number() over (order by loanamount desc)as rownumber from loans;
select loanid,customerid,loanamount,rank() over(partition by customerid order by loanamount desc)as rownumber from loans;
select loanid,customerid,loanamount,sum(loanamount) over (order by loanamount desc)as runningtotal from loans;
select loanid,customerid,loanamount,lag(loanamount) over (order by loanamount desc)as previousloanamount from loans;
select loanid,customerid,loanamount,lead(loanamount) over (order by loanamount desc)as nextloanamount from loans;