-- 2023.08.20 21:57
-- 적재
use my_cat;
drop table ins_sft_game_cargo;

create table ins_sft_game_cargo(					
	cargoNo			int	,
	goodsName			char(50)	,
	goodsGrade			int	,
	purchasePrice			int	
);		

insert into ins_sft_game_cargo(cargoNo,goodsName,goodsGrade,purchasePrice) values (1,'소금',5,100);
insert into ins_sft_game_cargo(cargoNo,goodsName,goodsGrade,purchasePrice) values (2,'아몬드',5,150);

select * from ins_sft_game_cargo;

update ins_sft_game_cargo set goodsName='',goodsGrade=0,purchasePrice=0 where cargoNo=1;
update ins_sft_game_cargo set goodsName='',goodsGrade=0,purchasePrice=0 where cargoNo=2;

update ins_sft_game_cargo set goodsName='소금',goodsGrade=5,purchasePrice=100 where cargoNo=1;
update ins_sft_game_cargo set goodsName='아몬드',goodsGrade=5,purchasePrice=150 where cargoNo=2;