insert into trainer (name,age,hometown)
values
('trainer1',25,'Calgary'),
('trainer2',12,'Victoria'),
('trainer3',20,'Montreal'),
('trainer4',16,'Ottawa'),
('trainer5',17,'Winnipeg'),
('trainer6',68,'Vancouver');



insert into pokémon (name,type,trainer_id)
values
('Pikachu','Fire',2),
('Eevee','Grass',1),
('Snoriax','Water',3),
('Charizard','Fire',4),
('Ditto','Rock',5),
('Gardevoir','Grass',6),
('Piplup','Electric',2),
('MewTwo','Fire',3),
('Vaporeon','Water',4),
('Garchomp','Rock',6);

select t.name ,t.age,t.hometown 
from trainer t;

select p.name, p.`type`, p.trainer_id
from pokémon p ;

select t.name
from pokémon p inner join trainer t on p.trainer_id=t.id
where p.type='Fire';

select p.name, t.name
from pokémon p inner join trainer t on p.trainer_id=t.id
order by p.name asc;

select avg(t.age) 
from trainer t ;

select count(p.id) , t.name
from pokémon p inner join trainer t on p.trainer_id=t.id
group by(p.trainer_id);

select t.name
from trainer t left join pokémon p  on t.id =p.trainer_id
where p.id is null;

select t.name
from pokémon p right join trainer t  on t.id =p.trainer_id
where p.trainer_id is null;

select t.name
from pokémon p right join trainer t  on t.id =p.trainer_id
where p.id is null;

select t.name
from pokémon p inner join trainer t on p.trainer_id=t.id
group by(p.trainer_id)
having  count(p.`type`)>1;

select t.name ,count(p.`type`) 
from pokémon p inner join trainer t on p.trainer_id=t.id
group by(p.trainer_id)
having  count(p.`type`)>=3;



















































































