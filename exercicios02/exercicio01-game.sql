create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar(255),
descricao varchar(255),
primary key(id)
);

create table tb_personagens(
id bigint auto_increment,
nome varchar(255),
ataque int,
defesa int,
primary key(id),
classe_id bigint,
foreign key(classe_id) references tb_classes(id)
);

select * from tb_personagens;
select * from tb_classes;

insert into tb_classes(nome, descricao) values ('mago','solta poderzinho');
insert into tb_classes(nome, descricao) values ('atirador','mete bala em geral');
insert into tb_classes(nome, descricao) values ('tanque','toma porrada e tentanão morrer');
insert into tb_classes(nome, descricao) values ('assassino','se esconde na moita e explode o inimigo');
insert into tb_classes(nome, descricao) values ('suporte','dá cura e morre pelo adc');

insert into tb_personagens(nome,ataque,defesa,classe_id) values ('mandiocaa',9000000, 100,1);
insert into tb_personagens(nome,ataque,defesa,classe_id) values ('casemiro',900, 100000,3);
insert into tb_personagens(nome,ataque,defesa,classe_id) values ('Vinicius',9000, 1000,2);
insert into tb_personagens(nome,ataque,defesa,classe_id) values ('Luide',5000, 1000,2);
insert into tb_personagens(nome,ataque,defesa,classe_id) values ('Judite',100, 50000,5);
insert into tb_personagens(nome,ataque,defesa,classe_id) values ('Gala-Feio',75000, 3000,4);
insert into tb_personagens(nome,ataque,defesa,classe_id) values ('Alcione',90000, 90000,1);
insert into tb_personagens(nome,ataque,defesa,classe_id) values ('Pirulla',9000, 10000,3);

update tb_personagens set defesa = 1500 where id = 4;

select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa > 1000 and defesa < 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classe_id;

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classe_id where tb_classes.id = 3;







