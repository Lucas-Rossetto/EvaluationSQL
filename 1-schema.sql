

drop table module;
drop table year;
drop table enrolment;
drop table student;
drop table assessment;

create table module(
 id int unsigned auto_increment not null ,
 name VARCHAR(255),
 primary key (id));
 
 
 create table year(
 id int unsigned auto_increment not null ,
 label VARCHAR(255),
 primary key (id));
 
 create table enrolment(
`from` DATETIME ,
`to` DATETIME);


create table student(
id int unsigned auto_increment not null ,
firstname VARCHAR(255) ,
lastname VARCHAR(255),
primary key (id));

 
create table assessment(
attempted DATETIME ,
passed DATETIME ,
grade int , 
primary key (attempted));
 