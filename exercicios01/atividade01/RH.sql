CREATE DATABASE db_RH;

use db_rh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
cargo VARCHAR(255),
salario DOUBLE,
admissao VARCHAR(255),
primary key(id)
);

insert into tb_colaboradores (nome, cargo,salario,admissao) values('Jonathan','dev-jr', 5000,'2022/05/20');
insert into tb_colaboradores (nome, cargo,salario,admissao) values('Pedro','dev-jr', 5000,'2022/04/20');
insert into tb_colaboradores (nome, cargo,salario,admissao) values('Maria','dev-pl', 7500,'2021/08/20');
insert into tb_colaboradores (nome, cargo,salario,admissao) values('João','dev-pl', 7500,'2021/07/20');
insert into tb_colaboradores (nome, cargo,salario,admissao) values('Bruna','dev-sn', 10000,'2020/06/20');
insert into tb_colaboradores (nome, cargo,salario,admissao) values('Vinicius','estagiario', 1500,'2022/06/20');

select * from tb_colaboradores;

select nome, salario from tb_colaboradores where salario > 2000;
select nome, salario from tb_colaboradores where salario < 2000;

update tb_colaboradores set nome = "Joaquim" where id = 4;
update tb_colaboradores set salario = 5750 where id = 1;




