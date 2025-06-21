-- sql comment
drop database if exists ExamDB;
create database ExamDB;
-- 본인이 작성하라 시작
use ExamDB; -- workbrach에서 데이터베이스 사용하기 전에 use로 선언

create table student(
	num int not null,
	name varchar(15),
	depart varchar(20),
	primart key(num)
);

insert into student values(1, "김재우", "일본어과");
insert into student values(2, "이영희", "일본어과");

update student
set depart = "컴퓨터과"
where num = 1;  -- workbranch에선 기본키가 아니면 where로 검색 불가능 

-- 본인이 작성하라 종료 
select num,name,depart from student;
