-- 2023.08.19 22:05
use my_cat;
drop table sft_game_city;
-- 도시정보
create table sft_game_city(
	no int primary key auto_increment,
    name char(50) unique,
    bar_man_id char(4),   	-- 종업원
    bar_man_name char(20),	-- 종업원   
    bar_man_liking int		-- 종업원
);

# 종업원 있는 항구들 리스트
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('이스탄불','0001','파티시아',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('함부르크','0002','마르그레테',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('런던','0003','마리',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('베라크루스','0004','실비아',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('암스테르담','0005','완다',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('세비아','0006','도나',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('알렉산드리아','0007','네리',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('바타비아','0008','티티스',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('리스본','0009','줄리아',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('스톡홀름','0010','프란시스카',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('제노바','0011','마틸다',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('한양','0012','여희',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('바스라','0013','사피아',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('하바나','0014','이사벨',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('말라카','0015','루시아',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('소팔라','0016','하토라',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('오사카','0017','사쿠라',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('항주','0018','미화',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('산죠르제','0019','베리사',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('캘리컷','0020','베나질',0);
insert into sft_game_city (name,bar_man_id,bar_man_name,bar_man_liking) values ('아테네','0021','뮤리네',0);

select * from sft_game_city;

drop table ins_sft_game_city;
-- ins 테이블 생성
create table ins_sft_game_city  as select * from sft_game_city;

select * from ins_sft_game_city;

-- 호감도 업뎃
-- update ins_sft_game_city set bar_man_liking = bar_man_liking + #{val} where no = #{cityNo};
update ins_sft_game_city set bar_man_liking = bar_man_liking + 1 where no = 9;
select * from ins_sft_game_city where no = 9;