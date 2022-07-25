create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
responsavel varchar(255),
serie int,
nota double,
primary key (id)
);

insert into tb_estudantes (nome,responsavel, serie, nota) values ('Joãozinho','Dona Ana', 3, 7.5 );
insert into tb_estudantes (nome,responsavel, serie, nota) values ('Mariazinha','Seu João', 3, 6.5 );
insert into tb_estudantes (nome,responsavel, serie, nota) values ('Pedrinho','Dona Lurdes', 4, 9.5 );
insert into tb_estudantes (nome,responsavel, serie, nota) values ('Aninha','Seu Aristidez', 4, 10 );
insert into tb_estudantes (nome,responsavel, serie, nota) values ('Chiquinho','Dona Ana', 5, 3.5 );
insert into tb_estudantes (nome,responsavel, serie, nota) values ('Nathan','Seu Jorge', 5, 4 );
insert into tb_estudantes (nome,responsavel, serie, nota) values ('Jorguinho','Dona Lurdes', 6, 8.5 );
insert into tb_estudantes (nome,responsavel, serie, nota) values ('Bruninha','Seu Zé', 6, 7 );

select * from tb_estudantes;

select nome, nota from tb_estudantes where nota > 7;
select nome, nota from tb_estudantes where nota < 7;

update tb_estudantes set responsavel = "Seu Gerônimo" where id = 6;
update tb_estudantes set nome = "Judite" where id = 2;





