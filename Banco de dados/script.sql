create database barbearia;

use barbearia;

create table cliente(
idcliente int primary key auto_increment,
nome varchar(45),
email varchar(45),
telefone varchar(45),
cpf varchar(45),
senha varchar(45)
);

create table barbeiro(
idbarbeiro int primary key auto_increment,
profissional varchar(45),
dt datetime
);


create table agendamento(
id_agendamento int auto_increment,
fkcliente int,
foreign key (fkcliente) references cliente (idcliente),
fkbarbeiro int, 
foreign key (fkbarbeiro) references barbeiro (idbarbeiro),
servico varchar(45),
data_hora datetime,
primary key (id_agendamento,fkcliente,fkbarbeiro)
);

insert into cliente (nome,email,telefone,senha,cpf) value
("Fernando","fernando.pereira@sptech.school",9-72928835,"mortaia",12345678),
("David","David.lucca@sptech.school",9-45877896,"lucca",987654321),
("Brenno","Brenno@sptech.school",9-25489878,"oliver",213465978)
;

insert into barbeiro (profissional, dt) value
('xavier', '2022-06-06 10:00'),
('Lucas', '2022-06-06 11:00'),
('xavier','2022-06-06 12:00');


insert into agendamento (fkcliente,fkbarbeiro,servico,data_hora) value
(1,1,'barba simples','2022-06-06 10:00'),
(1,1,'corte de cabelo classico','2022-06-06 11:00'),
(1,1,'escova masculina','2022-06-06 12:00');



