create database javac;
use javac;

create table patient(pid int not null auto_increment primary key,pname varchar(50) not null);
	create table doctor(did int auto_increment primary key,dname varchar(50),spec varchar(50),available bit,rating float,years_of_experince int);
create table treatment( pid int not null ,did int ,Medicine varchar(50),problem varchar(150) not null,specialist varchar(150),FOREIGN KEY (pid) REFERENCES patient(pid),FOREIGN KEY (did) references doctor(did));

desc doctor;
desc treatment;
drop table doctor;
drop table treatment;
drop table patient;
-- insert into doctor(dname,spec,available,rating,years_of_experince) values
-- ("sai", "orthology",1,3.5,4),
-- ("ram", "orthology",1,3.5,4),
-- ("ram", "cardiology",1,3.5,4),
-- ("sham", "cardiology",1,3.5,4);
select * from doctor;
select * from patient;
select * from  treatment;
delete from patient where pid=12;
delete from treatment where pid=0;
select pid,did from treatment where pid IS NULL and Medicine is null and  did=1;
select pid,did from Treatment where medicine IS NULL and did=1;
select * from Treatment where did=1;
update doctor set available = true where did=1;
insert into doctor(dname,spec,available,rating,years_of_experince) values
("Vamsi", "Cardiology",1,5.0,10),
("Vasisth", "Dermatology",1,4.5,6),
("Praneeth", "Gynecology ",1,5.0,5),
("Sujay", "Cardiology",1,3.5,4), 
("Vamsi", "Neurology",1,1.0,3),("Praneeth", "Transplant Surgery ",1,4.5,15),
("Sai", "Rheumatology",1,0.5,6),
("Nehas", "Dermatology",1,4.0,3),
("Sujay", "Gastroenterology ",1,2.0,2),
("Bhuvan", "Urology",1,5.0,7),
("Pooja", "Oncology",1,5.0,12),
("Krithi ", "Sports Medicine",1,4.5,6),
("Regina ", "ENT",1,3.0,20),
("Kajal ", "Psychiatrist",1,0.5,17),
("Sairani ", "Obstetrician/Gynecologist",1,4.5,7),
("Kanishka ", "Hematologist",1,3.5,9),
("Keerthy ", "Radiologist",1,3.5,6),
("kabir","neuro surgoen",1,4.5,4),
("arjun","Nephrologist",1,3.5,4),
("shreeya","Rheumatologist",1,5.0,3),
("shreya","Urologist",1,5.0,3),
("kamal","Pulmonologist",1,3.0,2),
("amar","Plastic Surgeon",1,4.0,6),
("vijay","Gastroenterologist",1,2.5,7),
("vikram","Anesthesiologist",1,3.0,1),
("sharukh","Physicians",1,4.5,2),
("srija","Physician",1,2.5,1),
("krishna","Pediatrician",1,4.5,7),
("rao","Pediatrician",1,5.0,3),
("sahithi","Pediatrician",1,2.5,7),
("bhavya","Plastic Surgeon",1,5.0,3);
-- delete from doctor where did=34;
-- delete from patient;
-- delete from treatment ;
-- drop database javaproject;