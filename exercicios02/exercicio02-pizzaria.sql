create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
tamanho varchar(255),
tempo_preparo int,
primary key(id)
);

create table tb_pizzas(
id bigint auto_increment,
tipo varchar(255),
sabor varchar(255),
quantidade int,
valor double,
primary key(id),
categoria_id bigint,
foreign key (categoria_id) references tb_categorias(id)
);

select * from tb_categorias;
select * from tb_pizzas;

insert into tb_categorias (tamanho, tempo_preparo) values ('brotinho',45);
insert into tb_categorias (tamanho, tempo_preparo) values ('pequena',50);
insert into tb_categorias (tamanho, tempo_preparo) values ('media',55);
insert into tb_categorias (tamanho, tempo_preparo) values ('grande',60);
insert into tb_categorias (tamanho, tempo_preparo) values ('maracanã',75);

insert into tb_pizzas(tipo, sabor, quantidade, valor,categoria_id) values ('Salgada','4 queijos',1,35, 3);
insert into tb_pizzas(tipo, sabor, quantidade, valor,categoria_id) values ('doce','Cartola',1,40, 3);
insert into tb_pizzas(tipo, sabor, quantidade, valor,categoria_id) values ('Salgada','Portuguesa',1,70, 4);
insert into tb_pizzas(tipo, sabor, quantidade, valor,categoria_id) values ('Salgada','mussarela',2,140, 5);
insert into tb_pizzas(tipo, sabor, quantidade, valor,categoria_id) values ('Doce','Chocolate',1,32.50, 2);
insert into tb_pizzas(tipo, sabor, quantidade, valor,categoria_id) values ('Doce','queijo com goiabada',1,35, 1);
insert into tb_pizzas(tipo, sabor, quantidade, valor,categoria_id) values ('Salgada','marguerita',2,150, 5);
insert into tb_pizzas(tipo, sabor, quantidade, valor,categoria_id) values ('Salgada','calabresa',1,35, 3);

select * from tb_pizzas where valor > 45;
select * from tb_pizzas where valor > 50 and valor < 100;

select * from tb_pizzas where sabor like "%m%";

select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categoria_id;

select tb_pizzas.sabor, tb_categorias.tempo_preparo from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categoria_id where tb_categorias.id = 5;







