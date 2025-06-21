-- sql comment
drop database if exists ExamDB;
create database ExamDB;
-- 본인이 작성하라 시작
use ExamDB; -- workbrach에서 데이터베이스 사용하기 전에 use로 선언

create table employee(
	id int not null,
	name varchar(15),
	city varchar(15),
	primary key(id)
);

insert into employee values(1, "김재우", "수원시");
insert into employee values(2, "이영희", "인천시");

update employee
set city = "용인시"
where id = 1;

-- 본인이 작성하라 종료 
select id,name,city from employee;
