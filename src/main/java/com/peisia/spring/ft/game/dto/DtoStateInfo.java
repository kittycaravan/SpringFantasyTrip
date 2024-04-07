package com.peisia.spring.ft.game.dto;

import lombok.Data;

@Data
public class DtoStateInfo {
	int no;
    String id;
    String user_name;
	long turn;
//    Date sft_date;
    int fatigue;
    long gold;
    int current_loc;
}