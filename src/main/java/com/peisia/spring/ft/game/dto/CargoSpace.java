package com.peisia.spring.ft.game.dto;

import lombok.Data;
import lombok.extern.log4j.Log4j;

@Log4j
@Data
public class CargoSpace {
	Product product;
	Integer grade;
	Long price;
	
	CargoSpace(){
		log.info("=== 프로덕트 객체 만들어짐");
	}
}
