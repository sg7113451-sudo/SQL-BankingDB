Select * from customers;
INSERT INTO Customers (
    CustomerID,
    FirstName,
    LastName,
    Email,
    Phone,
    AccontCreationDate,
    DateOfBirth
)
VALUES
(102, 'John', 'Doe', 'john.doe@example.com', '9876543210', '2026-07-27', '1995-05-15'),
(103, 'Priya', 'Sharma', 'priya.sharma@example.com', '9123456789', '2026-07-27', '1992-03-10'),
(104, 'Amit', 'Patel', 'amit.patel@example.com', '9988776655', '2026-07-27', '1988-11-22'),
(105, 'Sara', 'Khan', 'sara.khan@example.com', '9765432109', '2026-07-27', '1996-07-01'),
(106, 'Michael', 'Brown', 'michael.brown@example.com', '9456123789', '2026-07-27', '1985-09-12'),
(107, 'Anjali', 'Mehta', 'anjali.mehta@example.com', '9345678123', '2026-07-27', '1993-12-05'),
(108, 'David', 'Wilson', 'david.wilson@example.com', '9234567890', '2026-07-27', '1990-04-18'),
(109, 'Rohit', 'Verma', 'rohit.verma@example.com', '9123987654', '2026-07-27', '1997-01-25'),
(110, 'Emily', 'Taylor', 'emily.taylor@example.com', '9876123450', '2026-07-27', '1994-06-30'),
(111, 'Neha', 'Singh', 'neha.singh@example.com', '9765432198', '2026-07-27', '1991-08-20');
INSERT INTO Accounts (
    AccountID,
    CustomerID,
    AccountType,
    Balance
)
VALUES
(201, 101, 'Saving', 25000.00),
(202, 102, 'Current', 15000.00),
(203, 103, 'Saving', 32000.00),
(204, 104, 'Current', 5000.00),
(205, 105, 'Saving', 45000.00),
(206, 106, 'Current', 12000.00),
(207, 107, 'Saving', 28000.00),
(208, 108, 'Current', 8000.00),
(209, 109, 'Saving', 60000.00),
(210, 110, 'Current', 10000.00),
(211, 111, 'Saving', 35000.00);
INSERT INTO Branches (
    BranchID,
    BranchName,
    BranchAddress,
    BranchPhone
)
VALUES
(1, 'Mumbai Branch', 'Andheri, Mumbai', '0221111111'),
(2, 'Pune Branch', 'Shivaji Nagar, Pune', '0202222222'),
(3, 'Delhi Branch', 'Connaught Place, Delhi', '0113333333'),
(4, 'Bangalore Branch', 'MG Road, Bangalore', '0804444444'),
(5, 'Chennai Branch', 'T Nagar, Chennai', '0445555555'),
(6, 'Hyderabad Branch', 'Banjara Hills, Hyderabad', '0406666666'),
(7, 'Kolkata Branch', 'Park Street, Kolkata', '0337777777'),
(8, 'Ahmedabad Branch', 'Navrangpura, Ahmedabad', '0798888888'),
(9, 'Jaipur Branch', 'MI Road, Jaipur', '0141999999'),
(10, 'Nagpur Branch', 'Sitabuldi, Nagpur', '0712999999'),
(11, 'Surat Branch', 'Ring Road, Surat', '0261999999');
INSERT INTO Loans (
    LoanID,
    CustomerID,
    LoanAmount,
    Interesrate,
    StartDate,
    EndDate
)
VALUES
(301, 101, 500000.00, 8.50, '2025-01-15', '2030-01-15'),
(302, 102, 300000.00, 7.75, '2025-02-01', '2030-02-01'),
(303, 103, 450000.00, 9.00, '2025-03-10', '2030-03-10'),
(304, 104, 200000.00, 8.25, '2025-04-05', '2030-04-05'),
(305, 105, 600000.00, 8.75, '2025-05-20', '2030-05-20'),
(306, 106, 350000.00, 7.50, '2025-06-15', '2030-06-15'),
(307, 107, 250000.00, 9.25, '2025-07-01', '2030-07-01'),
(308, 108, 700000.00, 8.00, '2025-08-12', '2030-08-12'),
(309, 109, 400000.00, 8.60, '2025-09-18', '2030-09-18'),
(310, 110, 550000.00, 7.90, '2025-10-25', '2030-10-25'),
(311, 111, 300000.00, 8.40, '2025-11-30', '2030-11-30');
INSERT INTO Transactions (
    TransactionID,
    TransactionDate,
    Amount,
    tranasactiontype,
    AccountID
)
VALUES
(301, '2025-05-10', 5000.00, 'Deposit', 201),
(302, '2025-05-12', 2000.00, 'Withdraw', 201),
(303, '2025-05-15', 10000.00, 'Deposit', 201),
(304, '2025-05-18', 3000.00, 'Withdraw', 201),
(305, '2025-05-20', 7000.00, 'Deposit', 201),
(306, '2025-05-22', 2500.00, 'Withdraw', 201),
(307, '2025-05-25', 8000.00, 'Deposit', 201),
(308, '2025-05-27', 4000.00, 'Withdraw', 201),
(309, '2025-05-29', 6000.00, 'Deposit', 201),
(310, '2025-06-01', 3500.00, 'Withdraw', 201),
(311, '2025-06-03', 9000.00, 'Deposit', 201);

truncate transactions;
INSERT INTO Transactions (
    TransactionID,
    TransactionDate,
    Amount,
    tranasactiontype,
    AccountID
)
VALUES
(301, '2025-05-10', 5000.00, 'Deposit', 201),
(302, '2025-05-12', 2000.00, 'Withdraw', 202),
(303, '2025-05-15', 10000.00, 'Deposit', 203),
(304, '2025-05-18', 3000.00, 'Withdraw', 204),
(305, '2025-05-20', 7000.00, 'Deposit', 205),
(306, '2025-05-22', 2500.00, 'Withdraw', 206),
(307, '2025-05-25', 8000.00, 'Deposit', 207),
(308, '2025-05-27', 4000.00, 'Withdraw', 208),
(309, '2025-05-29', 6000.00, 'Deposit', 209),
(310, '2025-06-01', 3500.00, 'Withdraw', 210);
set sql_safe_updates=0;

update customers set phone='9999999999' where customerid=101;
update accounts set balance='30000' where accountid=201;
update customers set AccontCreationDate= '2026-05-10' where customerid=101;
 delete from transactions where transactionid = 302;
 delete from accounts where accountid=202;
 use bankingdb;
 
 select accountid, accounttype,balance from accounts;
 select transactionid,amount,tranasactiontype from transactions;
 select * from accounts where AccountType = 'saving';
 select * from accounts where balance > 25000;
 select * from accounts where balance between 25000 and 40000;
 select * from customers where customerid in (101,102,103);
 select * from customers  where firstname like 'r%';
 select * from accounts;
 select * from accounts where balance <15000;
 select * from transactions where amount between 1000 and 10000;
 select * from customers where customerid in (104 , 105);

 select * from  customers where lastname like 's%';
 select * from accounts order by balance asc;
 select * from accounts order by balance  desc limit 3;
 select * from customers order by firstname asc;
 select * from customers order by firstname asc , dateofbirth asc;
 select distinct AccountType from accounts;
 update accounts set accounttype = 'saving' where accounttype = 'saving';
 select * from Transactions order by  amount desc limit  5 offset 2;
 select * from transactions;
 select * from customers order by lastname  asc;
 select * from transactions order by amount desc limit 5;
 select distinct tranasactiontype from transactions;
 select * from transactions order by amount  limit 4 offset 3;
 select * from customers where phone is null;
 select * from customers where email is not null;
 select * from customers where email is null;
 select * from accounts where balance is not null;
 select * from accounts;
 select accountid,balance , case when balance >= 40000 then 'premium account' when balance >=25000 then 'stanadard account' else ' basic account' end as 'account status' from accounts;
 select *from transactions;
 select transactionid, amount, case when amount>8000 then ' high transactions' when amount >=4000 then ' medium transaction' else ' low transactions' end as ' transaction amount type ' from transactions;
 
select *, sum(amount) over(order by amount) as total from transactions;
select accountid, balance , rank() over(order by balance desc) as balancerank from accounts;
 use bankingdb;
select transactionid, amount, sum(amount) over(order by transactiondate asc) as ranning_total from transactions;
 select * from transactions;
  select transactionid, amount, avg(amount) over () as Average_transactions from transactions;
  select *, rank() over( order by balance desc) as rnk from accounts;
  select *, sum(balance)over (order by balance) as running_toatl from accounts;
  select *, max(amount) over() as max_amt from transactions;

 
 
 
 
 
 
 