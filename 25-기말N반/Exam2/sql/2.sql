-- sql comment
drop database if exists ExamDB;
create database ExamDB;
USE ExamDB;
CREATE TABLE member(
   id VARCHAR(20) NOT NULL,
   depart VARCHAR(30),    
   PRIMARY KEY (id)
);

insert into member (id, depart) values ('1id','1학과');
insert into member (id, depart) values ('2id','2학과');

select * from member;
