create database airlines;
use airlines;

create table Flight(
fl_no              int              primary key,
fl_from            varchar(30), 
fl_to              varchar(30),
distance           int,
departs            time,
arrives            time,
price              real
);
desc Flight;

create table Aircraft(
a_id               int             primary key,
a_name             varchar(30),
cruising_range     int
);
desc Aircraft;

create table Employee(
e_id               int             primary key,
e_name             varchar(30),
salary             int
);
desc Employee;

create table Certified(
e_id  int,
a_id  int,
foreign key (a_id) references aircraft(a_id) ON DELETE SET NULL ON UPDATE CASCADE,
foreign key (e_id) references employee(e_id) ON DELETE SET NULL ON UPDATE CASCADE
);
desc certified;

insert into flight values('1','BLR','DEL','5900','6:00:00','8:30:00','3899');
insert into flight values('2','BOM','DEL','3600','12:00:00','13:30:00','2899');
insert into flight values('3','DDN','BLR','6900','15:00:00','18:30:00','7899');
insert into flight values('4','KOL','IXR','900','6:00:00','7:10:00','1799');
insert into flight values('5','PAT','BOM','4900','16:00:00','18:05:00','4899');
Select * from flight;

insert into Aircraft values('007','Boeing 777','10000');
insert into Aircraft values('198','6E 101','15000');
insert into Aircraft values('256','Nimbus 2023','16000');
insert into Aircraft values('073','Fire Bolt','16000');
insert into Aircraft values('506','Mera Jahan','12000');
Select * from Aircraft;

insert into Employee values('1001','Captain Sully','160000');
insert into Employee values('1002','Jack Sparrow','200000');
insert into Employee values('1003','Vijay Dinanath Chauhan','60000');
insert into Employee values('1004','Pete Mitchell','275000');
Select * from Employee;

insert into certified values('1001','007');
insert into certified values('1002','007');
insert into certified values('1002','073');
insert into certified values('1003','256');
insert into certified values('1003','506');
insert into certified values('1004','007');
insert into certified values('1004','198');
insert into certified values('1004','256');
insert into certified values('1004','073');
insert into certified values('1004','506');
select * from certified;
