create database bank5;
use bank5;

create table branch(
	branchname varchar(30),
    branchcity varchar(30),
    assets real,primary key(branchname));
desc branch;
create table bankaccount(
	accno integer,
    branchname varchar(30),
    balance real,
    primary key(accno),
    customer_id int,
    foreign key(branchname) references branch(branchname));
desc bankaccount;   
create table BankCustomer(
	customername varchar(30),
    customerstreet varchar(30),
    customercity varchar(30),
	customer_id int,
    primary key(customer_id));
desc bankaccount;
create table Depositer(
	depositername varchar(30),
    accno integer, 
    foreign key(accno) references BankAccount(accno));
desc Depositer;
create table Loan(
	loannumber int,
    branchname varchar(30),
    amount real,
    primary key(loannumber),
    foreign key(branchname) references Branch(branchname)); 
desc Loan;

insert into branch values('Kuchery','Rudrapur',2500000);
insert into branch values('IndiraChowk', 'Rudrapur', 50000000);
insert into branch values('ShriRamPur','Huriya',7500);
insert into branch values('Jewmann','Germany',590000000);
insert into branch values('Miami','Florida',55550000);
select * from branch;

/*inserting BankAccount values */
insert into BankAccount values(101,'Kuchery',2000,1);
insert into BankAccount values(102,'IndiraChowk',5000,2);
insert into BankAccount values(103,'ShriRamPur',6000,3);
insert into BankAccount values(104,'Jewmann',9000,4);
insert into BankAccount values(105,'Miami',5000,5);
select * from BankAccount;

/*inserting BankCustomer values */
insert into BankCustomer values('Avinash','WellingtonRoad','Bangalore',1);
insert into BankCustomer values('Dinesh','MissionRoad','Delhi',2);
insert into BankCustomer values('Nikil','RingRoad','Kerala',3);
insert into BankCustomer values('Ravi','CVRoad',';Mangalore',4);
insert into BankCustomer values('Raju','ChurchStreet','Bangalore',5);
select * from BankCustomer;

/*inserting Depositer values */
insert into Depositer values('Avinash',101);
insert into Depositer values('Dinesh',102);
insert into Depositer values('Nikil',103);
insert into Depositer values('Ravi',104);
insert into Depositer values('Avinash',105);
insert into Depositer values('Ravi',104),('Avinash',101);
insert into Depositer values('Dinesh',102);
select * from Depositer;

/*inserting Loan values */
insert into Loan values (1001,'Kuchery',1000);
insert into Loan values(1002,'IndiraChowk',2000);
insert into Loan values(1003,'ShriRamPur',3000);
insert into Loan values(1004,'Jewmann',4000);
insert into Loan values(1005,'Miami',5000);loanbank_customer

select * from Loan;
select * from BankCustomer c where c.customercity="Bangalore";
select c.customername from BankCustomer where exists( select d.accno from Depositer d, BankCustomer 
