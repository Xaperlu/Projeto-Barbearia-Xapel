-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */
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





