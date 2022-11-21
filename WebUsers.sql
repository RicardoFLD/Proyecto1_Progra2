create database WebUsers
use WebUsers

create table users
(

Name varchar(50),
Email varchar(50),
Phone int    

)

insert into users (Name, Email, Phone)
values ('Angie', 'angiebermudez472@gmail.com', 87628009)

insert into users (Name, Email, Phone)
values ('Ricardo', 'ricardo.fallas@gmail.com', 86982345)

insert into users (Name, Email, Phone)
values ('Julio', 'julio123@gmail.com', 89239034)

select * from users