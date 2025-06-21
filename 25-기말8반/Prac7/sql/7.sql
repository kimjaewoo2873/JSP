-- sql comment
drop database if exists ExamDB;
create database ExamDB;
USE ExamDB;
CREATE TABLE member(
   id VARCHAR(20) NOT NULL,
   passwd  VARCHAR(20),
   name VARCHAR(30),    
   PRIMARY KEY (id)
);

insert into member (id, passwd, name) values ('1id','1pw','1이름');
insert into member (id, passwd, name) values ('2id','2pw','2이름');

select * from member;
