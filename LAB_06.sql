select * from customers;
select firstname, upper(firstname) as upper_case_name from customers;
select firstname, lower(firstname) as lower_case_name from customers;
select firstname,length(firstname) as name_lenght from customers;
select firstname,left(firstname,3) as inteial from customers;
select firstname, lastname, concat(firstname,"-",lastname) as full_name from customers;
select round(1256.75) as rounded_value;
select ceil(1256.15)as ceil_value;
select floor(12.5623) as floor_value;
select abs(-18465) as absoulte_value;
select mod (25,4)as remaider;
select curdate();
select now();
select customerid,year(dateofbirth) as yearbirth from customers;
select customerid,month(dateofbirth) as monthbirth from customers;
select customerid, datediff(curdate(),dateofbirth)as no_of_days from customers;
select * from customers;
select firstname,dateofbirth, if (year(dateofbirth) <=1995, "adult","young") as category from customers;
select firstname, ifnull(phone,"not avilable") as phonenumber from customers;
select greatest('2000-01-15','1998-05-23','2025-06-24') as latest_dob;
select least("2000-01-15","1998-05-23","2025-06-24") as earlier_dob;
select firstname,nullif(firstname,"priya") as result from customers;
select sum(balance) as total_bal from accounts;
select avg(balance) as avg_bal from accounts;
select max(balance) as max_bal from accounts;
select min(balance) as min_bal from accounts;
select count(*) as totat_accounts from accounts;
select accounttype, sum(balance) as total_bal from accounts group by accounttype;
select accounttype, sum(balance) as avg_bal from accounts group by accounttype having sum(balance) >25000;




