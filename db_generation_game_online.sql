create database db_generation_game_online;
use db_generation_game_online;


create table tb_classe(
id_classe int primary key auto_increment,
tipo_classe enum ('Assassino', 'Guerreiro', 'Mago','Atirador','Escudeiro' ),
arma enum('Machado', 'Arco e Flecha', 'Espada', 'Cajado', 'Escudo'),
habilidade varchar(30)
);
create table tb_personagem(
id_personagem int primary key auto_increment,
nome  varchar(45),
sexo enum ('M', 'F'),
altura decimal(3,2),
poder_atk int (4),
poder_def int(4),
id_classe int, constraint fk_tb_classe foreign key (id_classe) references tb_classe(id_classe));



insert into tb_classe ( tipo_classe, arma, habilidade) values
( 'Assassino', 'Espada', 'Velocidade'),
( 'Guerreiro', 'Espada', 'Luta a curta distancia'),
( 'Mago', 'Cajado', 'Invocação'),
( 'Atirador', 'Arco e Flecha', 'Luta a distancia'),
( 'Escudeiro', 'Escudo', 'Defesa');
    
insert into tb_personagem (nome, sexo, altura, poder_atk, poder_def, id_classe) values
( 'Astaroth', 'M', '2.30', '1800', '2000', '2'),
('Sieg', 'M', '1.80', '1900', '3200', '2'),
('Valquiria', 'F', '1.75', '2500', '1800', '4'),
('Imperial', 'F', '1.90', '2000', '3200', '5'),
('Thanos', 'M', '2.35', '6500', '5000', '3'),
('Deadpool', 'M', '1.85', '5500', '2000', '1'),
('Galactus', 'M', '3.00', '7500', '8000', '1'),
('Tritao', 'M', '1.95', '6500', '8000', '2');



select * from tb_personagem where poder_atk > 2000;
select * from tb_personagem where poder_def between 1000 and 2000;
select * from tb_personagem where nome like '%c%';

select * from tb_personagem inner join tb_classe on tb_personagem.id_classe = tb_classe.id_classe;