create database Student_faculty;
use Student_faculty;
create table student(
	Snum varchar(20) primary key,
    Sname varchar(20),
    Major char(25),
    lvl int,
    age int);
desc student;
create table Faculty(
	Fid varchar(20) primary key,
    Fname varchar(20),
    dept_id real);
desc Faculty;
create table class(
	cname varchar(20) primary key,
    meets_at_time real,
    room char(10),
    Fid varchar(20), foreign key(Fid) references Faculty(Fid) on delete set null on update cascade);
alter table class modify meets_at_time time;
desc class;
create table enrolled(
	Snum varchar(20), foreign key(Snum) references student(Snum) on delete set null on update cascade,
	cname varchar(20), foreign key(cname) references class(cname) on delete set null on update cascade);
desc enrolled;

insert into student values('1','Harry','DATDA','2','14');
insert into student values('2','Ron','Quidditch','1','15');
insert into student values('3','Hermione','Wizardry','3','14');
insert into student values('4','Draco','DATDA','2','14');
insert into student values('5','Seamus','potions','1','12');
select * from student;

insert into Faculty values('HS','Horace_Slugghorn','001');
insert into Faculty values('AM','Allister_Moody','007');
insert into Faculty values('SS','Severus_Snape','001');
insert into Faculty values('SB','Sirius_Black','007');
insert into Faculty values('RH','Rolando_Hooch','002');
select * from Faculty;

insert into class values('Potions101','12:00:00','396','HS');
insert into class values('DATDA101','12:00:00','294','AM');
insert into class values('Potions201','2:00:00','901','SS');
insert into class values('DATDA201','2:00:00','801','SB');
insert into class values('Physical','1:00:00','ground','RH');
select * from class;

insert into enrolled values('1','Potions101');
insert into enrolled values('1','DATDA201');
insert into enrolled values('2','Physical');
insert into enrolled values('2','Potions101');
insert into enrolled values('3','Potions201');
insert into enrolled values('3','DATDA201');
insert into enrolled values('4','DATDA201');
insert into enrolled values('4','Physical');
insert into enrolled values('5','Potions101');
insert into enrolled values('5','Physical');
select * from enrolled;

select student.Sname from student, faculty, class, enrolled where faculty.Fid-class.Fid AND class.Cname-enrolled.Snum and faculty.Fname='Rolando_Hooch' AND student.lvl ='1';