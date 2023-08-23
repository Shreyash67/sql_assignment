# Query to return Ids of product info have 0 likes 

create table Product_info(
Pr_id int primary key,
Product_Name varchar(20)
);

insert into Product_info values(1001,"Blog"),
(1002,"Youtube"),
(1003,"Education");

create table Product_info_likes(
user_id int primary key,
Pr_id int,
like_date date, 
foreign key (Pr_id) references Product_info(Pr_id)
);

insert into Product_info_likes values(1,1001,'2022-07-15'),
(2,1003,'2022-08-18');

select pi.Pr_id from Product_info as pi left join Product_info_likes as pil
on pi.Pr_id = pil.Pr_id
GROUP BY pi.Pr_id
HAVING COUNT(pil.Pr_id) = 0;
