create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
descricao varchar(255),
categoria varchar(255),
quantidade int,
preco double,
primary key(id)
);

insert into tb_produtos (nome, descricao, categoria, quantidade, preco) values('celular','moto G8 play','eletronico',10,1100.00);
insert into tb_produtos (nome, descricao, categoria, quantidade, preco) values('carregador','carregador para moto G8','eletronico',7,100.00);
insert into tb_produtos (nome, descricao, categoria, quantidade, preco) values('fone de ouvido','fone para moto G8 play','eletronico',15,80.00);
insert into tb_produtos (nome, descricao, categoria, quantidade, preco) values('mouse','mouse pag gamer','eletronico',3,300.00);
insert into tb_produtos (nome, descricao, categoria, quantidade, preco) values('mesa gamer','mesa para escritório gamer','moveis',2,450.00);
insert into tb_produtos (nome, descricao, categoria, quantidade, preco) values('porta copos','apoio para copo preto','outros',12,10.00);
insert into tb_produtos (nome, descricao, categoria, quantidade, preco) values('computador','computador gamer','eletronico',1,2900.00);
insert into tb_produtos (nome, descricao, categoria, quantidade, preco) values('cortador de unha','cortador de unhas portátil','outros',50,10.00);

select * from tb_produtos;

select nome, preco from tb_produtos where preco > 500;
select nome, preco from tb_produtos where preco < 500;

update tb_produtos set nome = 'porta-copos' where id= 6;
update tb_produtos set preco = 150 where id= 2;





