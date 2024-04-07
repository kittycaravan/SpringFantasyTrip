package com.peisia.spring.ft.game.dto;

import java.util.ArrayList;

import lombok.Data;
import lombok.extern.log4j.Log4j;

@Log4j
@Data
public class Ship {
	ArrayList<CargoSpace> cargos = new ArrayList<>();
	
	Ship() {
		log.info("=== 쉽 객체 만들어짐");
	}
	Ship(int cargoCount) {
		for(int i=0;i<cargoCount;i++) {
			cargos.add(new CargoSpace());
		}
	}
	
}
