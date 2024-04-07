package com.peisia.spring.ft.game.dto;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.extern.log4j.Log4j;

@Data
@Component
@Log4j
public class Fleet {
	ArrayList<Ship> ships = new ArrayList<>();
	Long gold;	//소지금
	Integer fatigue;	// 피로도
	Long turn;	//턴
	
	public void addShip() {
		log.info("==== 바사 한대 추가했음");
		if(ships == null) {
			log.info("쉽스 널임");
		} else {
			log.info("쉽스 널아님");
		}
		ships.add(new Ship());
	}
	
	public void gold(Long l) {
		gold+=l;
	}
	
}