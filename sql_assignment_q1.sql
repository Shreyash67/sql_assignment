# To list candidates which prosses all the required skills

create database tech;

use tech;

create table technology(
ID int,
Technology varchar(25)
);

insert into technology values(1,"DS"),
(1,"Tablequ"),
(1,"SQL"),
(2,"R"),
(2,"POWER BI"),
(1,"Python");

select ID from technology
where technology="DS"
and ID in (
select ID from technology
where technology="SQL"
and ID in(
select id from technology
where technology="Python"
)
);
