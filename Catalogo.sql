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

insert into catalogo (Name, Email, Phone, Marca, Modelo, Año)
values ('Angie', 'angiebermudez472@gmail.com', 87628009, "Toyota", "Corolla", 1998)

select * from catalogo