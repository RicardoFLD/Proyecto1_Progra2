create database Catalogo

use Catalogo

create table catalogo(
Name varchar(50),
Email varchar(50),
Phone int,
Marca varchar(50),
Modelo varchar(50),
Año int
)

DELETE FROM catalogo WHERE Phone=321654;

insert into catalogo (Name, Email, Phone, Marca, Modelo, Año)
values ('Angie', 'angiebermudez472@gmail.com', 87628009, "Toyota", "Corolla", 1998)

ALTER TABLE catalogo ADD id  varchar(50);
ALTER TABLE catalogo ADD tipo  varchar(50);
ALTER TABLE catalogo ADD estado  varchar(50);

select * from catalogo;

insert into catalogo (Name, Email, Phone, Marca, Modelo, Año)
values ('Angie', 'angiebermudez472@gmail.com', 87628009, "susuki", "sidekick", 1998)
insert into catalogo (Name, Email, Phone, Marca, Modelo, Año)
values ('Angie', 'angiebermudez472@gmail.com', 87628009, "hiunday", "terracan", 2000)
insert into catalogo (Name, Email, Phone, Marca, Modelo, Año)
values ('Angie', 'angiebermudez472@gmail.com', 87628009, "nissan", "sentra", 2005)
insert into catalogo (Name, Email, Phone, Marca, Modelo, Año)
values ('Angie', 'angiebermudez472@gmail.com', 87628009, "chevrolet", "aveo", 2022)