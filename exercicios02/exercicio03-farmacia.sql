create database  db_farmacia_bem_estar;

use  db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment,
precisa_receita varchar(255),
generico varchar(255),
primary key(id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
categoria varchar(255),
valor double,
primary key(id),
categoria_id bigint,
foreign key(categoria_id) references tb_categorias(id)
);

select * from tb_categorias;
select * from tb_produtos;

insert into tb_categorias(precisa_receita,generico) values ("sim","não");
insert into tb_categorias(precisa_receita,generico) values ("não","não");
insert into tb_categorias(precisa_receita,generico) values ("não","sim");
insert into tb_categorias(precisa_receita,generico) values ("sim","sim");

insert into tb_produtos(nome,categoria, valor,categoria_id) values ('dipirona','dor de cabeça',7.50, 2);
insert into tb_produtos(nome,categoria, valor,categoria_id) values ('dipirona monoidratada','dor de cabeça',5.50, 3);
insert into tb_produtos(nome,categoria, valor,categoria_id) values ('paracetamal','ressaca',9.50, 3);
insert into tb_produtos(nome,categoria, valor,categoria_id) values ('paracetalouca','ressaca das brabas',8.50, 2);
insert into tb_produtos(nome,categoria, valor,categoria_id) values ('rivotril','remedio para doido dormir',150, 1);
insert into tb_produtos(nome,categoria, valor,categoria_id) values ('melhorque rivotril','remedio para doido desmaiar',180, 4);
insert into tb_produtos(nome,categoria, valor,categoria_id) values ('clonazepaun','dorme diabo',90, 4);
insert into tb_produtos(nome,categoria, valor,categoria_id) values ('cloridrato sodico de prednisolona','nunca nem vi',100, 1);

select * from tb_produtos where valor > 50;

select * from tb_produtos where valor > 5 and valor < 60;

select * from tb_produtos where nome like "%c%";

select tb_produtos.nome, tb_produtos.valor, tb_categorias.precisa_receita from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id; 

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id where tb_categorias.id = 2;


