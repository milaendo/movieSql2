insert into actors (name, character_name, movie_id, birthdate) values 
('Ryan Lee', 'Mr.potatoehead', '1', '1900/12/12'), 
('jase culter','r.c. car', '1', '1987,06,17'),
('leah miller','t rex','1','1989,04,06'),
('mila endo','buzz lightyear','1','1990,06,20'),
('cassidy sprauge','woody','1','1987,10,10');


insert into actors (name, character_name, movie_id, birthdate) values
('connor gordon','monkey','2','1991,08,25'),
('mike sweeney','jimmy','2','1987,08,08'),
('jimmy jacobson','safari guy','2','1986,08,08');


insert into actors (name, character_name, movie_id, birthdate) values
('jordan quinn','bud','65','1998,08,08'),
('james boydston','doyle','65','1990,08,08');


update movies set MPAA = "R" where movieid = '1';
update movies set MPAA = "G" where movieid = '2';
update movies set MPAA = "M" where movieid = '65';
update movies set MPAA = "R" where movieid = '6';
update movies set MPAA = "PG13" where movieid = '7';

update movies.tags 
set tag =  lower(tag) 
where id >0;

update movies.tags 
set tag = replace(tag,' ', '-')
where id > 0;

use movies;
select m.movieid, g.genres,m.genres
from movies m, genre g
where g.genres like concat('%',g.genres,'%')