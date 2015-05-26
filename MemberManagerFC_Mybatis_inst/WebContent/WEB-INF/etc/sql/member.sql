drop table member cascade constraint;

create table member(
	id varchar2(10) primary key,
	password varchar2(10) not null,
	name varchar2(50) not null,
	email varchar2(50) not null,
	join_date char(8) not null
);
insert into member values ('id-01', '1111', 'name-01', 'email@email.com', '20150101')
insert into member values ('id-02', '2222', 'name-02', 'email@email.com', '20150201');
insert into member values ('id-03', '3333', 'name-03', 'email@email.com', '20150301');
insert into member values ('id-04', '4444', 'name-04', 'email@email.com', '20150401');
insert into member values ('id-05', '5555', 'name-05', 'email@email.com', '20150501');
insert into member values ('id-06', '6666', 'name-06', 'email@email.com', '20150601');
insert into member values ('id-07', '7777', 'name-07', 'email@email.com', '20150701');
insert into member values ('id-08', '8888', 'name-08', 'email@email.com', '20150801');
insert into member values ('id-09', '9999', 'name-09', 'email@email.com', '20150901');
insert into member values ('id-10', '0000', 'name-10', 'email@email.com', '20151001');



--1 page 5
--ceil(rownum/한페이지보여질데이터수)--- > 페이지번호
select page, id, password, name, email, join_date
from(
			select (rownum/5) page, id, password, name, email, join_date
			from member
		)
where page=2

select id, password, name, email, join_date
	from(
		select ceil(rownum/10) page, id, password, name, email, join_date
		from(
					select id, password, name, email, join_date
					from MEMBER
					order by join_date
				)
			)
where page=1
select * from member

select count(*) from member