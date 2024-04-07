package com.peisia.spring.ft.game.model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
/* 도시 이동 처리 모델 */
public class ModelCityAToB {
	int arrivalCityNo;	//도착 도시 이름
	String arrivalCityName;	//도착 도시 이름
	int distance;	//도착 도시 까지의 거리 (리스본-세비아 기준 100)
}
