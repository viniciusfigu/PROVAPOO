CREATE DATABASE RI_Happy;
USE RI_Happy;

CREATE TABLE tbl_login
(
    id   	  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email              VARCHAR(30),
    senha             int not null
);

create table tbl_brinquedo
(
	id int not null auto_increment primary key,
    nome_brinq varchar(200),
    desc_brinq varchar(400)   
);

CREATE TABLE tbl_compra
(
    id int not null auto_increment primary key,
    valor double not null,
    id_brinq int not null,
    foreign key (id_brinq) references tbl_brinquedo (id)
);