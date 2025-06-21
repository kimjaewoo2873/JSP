-- sql comment
drop database if exists ExamDB;
create database ExamDB;
use ExamDB;
CREATE TABLE member(
   id VARCHAR(20) NOT NULL,
   name VARCHAR(30),    
   PRIMARY KEY (id)
);

insert into member (id, name) values ('1id','1이름');
insert into member (id, name) values ('2id','2이름');

select * from member;
