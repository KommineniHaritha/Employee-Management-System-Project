create database EMS;
use EMS;

create table employee (id int primary key, password varchar(10) , fname varchar(20) ,lname varchar(20), email varchar(30) , address varchar(50), 
city varchar(10) , state varchar(15) , pincode int , designation varchar(30) , phone varchar(10) );

insert into employee values(101,"h101", "HARITHA","KOMMINENI","haritha101@gmail.com", "Thimmapuram,Edlapadu","Guntur","Andhra Pradesh",522233,"Analyst",9121376526);
insert into employee values(102,"a102", "ARAVIND","A","aravind102@gmail.com", "Erode","Chennai","Tamil Nadu",522365,"Analyst",9080627892);
insert into employee values(103,"y103", "YESWANTH","POREDDY","yeswanth103@gmail.com", "Ramnagar","Anantapur","Andhra Pradesh",522048,"Analyst",9440059738);

select * from employee;
drop table employee;


create table admin (id int primary key,password varchar(10));

insert into admin values(100,"admin1");
insert into admin values(200,"admin2");


create table leaves (id int, leave_description varchar(30), from_date date, to_date date, leave_status varchar(30),
primary key(id,from_date,to_date), foreign key(id) references employee(id) ON DELETE CASCADE);

insert into leaves values(101, 'Sick leave','2021-05-21','2021-05-24','Approved');
insert into leaves values(103, 'Family Occassion', '2021-06-01','2021-06-05','Request for leave' );

select * from leaves;
drop table leaves;


create table timesheet(id int, work_description varchar(30), hours int, tdate date, timesheet_status varchar(30), 
primary key(id, tdate), foreign key(id) references employee(id) ON DELETE CASCADE);

insert into timesheet values(101, 'EMS Project', 10, '2021-06-01','Approved');

select * from timesheet;
drop table timesheet;


create table salary (id int, sal_month varchar(15), sal_year int, amount int, primary key(id,sal_month,sal_year), 
foreign key(id) references employee(id) ON DELETE CASCADE);

insert into salary values(101,"March", 2021, 50000);
drop table salary;
select * from salary;
