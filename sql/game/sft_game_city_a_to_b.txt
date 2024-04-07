-- 2023.08.15 23:10
use my_cat;
drop table sft_game_city_a_to_b;
-- 도시정보
create table sft_game_city_a_to_b(			
	a int not null,	-- a항구		
	b int not null,	-- b항구	
	distance int not null	-- 상대적 거리(리스본-세비아를 100으로 기준 잡음)
);			
-- insert into sft_game_city_a_to_b (a,b,distance) values (1,2,100);
insert into sft_game_city_a_to_b (a,b,distance) values (1,21,560);
insert into sft_game_city_a_to_b (a,b,distance) values (2,5,360);
insert into sft_game_city_a_to_b (a,b,distance) values (2,10,810);
insert into sft_game_city_a_to_b (a,b,distance) values (3,5,360);
insert into sft_game_city_a_to_b (a,b,distance) values (3,9,1590);
insert into sft_game_city_a_to_b (a,b,distance) values (4,14,1500);
insert into sft_game_city_a_to_b (a,b,distance) values (5,2,360);
insert into sft_game_city_a_to_b (a,b,distance) values (5,3,360);
insert into sft_game_city_a_to_b (a,b,distance) values (6,9,320);
insert into sft_game_city_a_to_b (a,b,distance) values (6,11,1480);
insert into sft_game_city_a_to_b (a,b,distance) values (7,21,940);
insert into sft_game_city_a_to_b (a,b,distance) values (9,3,1590);
insert into sft_game_city_a_to_b (a,b,distance) values (9,6,320);
insert into sft_game_city_a_to_b (a,b,distance) values (9,14,7030);
insert into sft_game_city_a_to_b (a,b,distance) values (9,19,3770);
insert into sft_game_city_a_to_b (a,b,distance) values (10,2,810);
insert into sft_game_city_a_to_b (a,b,distance) values (11,6,1480);
insert into sft_game_city_a_to_b (a,b,distance) values (11,21,1430);
insert into sft_game_city_a_to_b (a,b,distance) values (14,4,1500);
insert into sft_game_city_a_to_b (a,b,distance) values (14,9,7030);
insert into sft_game_city_a_to_b (a,b,distance) values (19,9,3770);
insert into sft_game_city_a_to_b (a,b,distance) values (21,1,560);
insert into sft_game_city_a_to_b (a,b,distance) values (21,7,940);
insert into sft_game_city_a_to_b (a,b,distance) values (21,11,1430);



select * from sft_game_city_a_to_b;

drop table ins_sft_game_city_a_to_b;
-- ins 테이블 생성
create table ins_sft_game_city_a_to_b as select * from sft_game_city_a_to_b;

select * from ins_sft_game_city_a_to_b;

SELECT * from ins_sft_game_city_a_to_b where a = 2;