-- 2023.08.13 00:41
use my_cat;
drop table sft_game_state_info;
-- 상태정보
create table sft_game_state_info(
	no int primary key auto_increment,
    id char(20) unique,
    user_name char(20) unique,
	turn int not null default 0,
    sft_date date not null,
    fatigue int not null default 0,
    gold int not null default 0,
    current_loc int	-- 현재 플레이어 위치(도시 등)
);
select * from sft_game_state_info;
# 1이 리스본임
insert into sft_game_state_info (id,user_name,sft_date,current_loc) values ('nyang','카미너스',now(),1);

update sft_game_state_info set gold = 1000;
update sft_game_state_info set gold = 3000;