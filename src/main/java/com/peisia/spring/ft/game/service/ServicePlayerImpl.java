package com.peisia.spring.ft.game.service;

import org.springframework.stereotype.Service;

import com.peisia.spring.ft.game.dto.Fleet;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ServicePlayerImpl implements ServicePlayer{
	Fleet fleet;
	@Override
	public Fleet init() {
		log.info("==== 플레이어 초기화");
		fleet.addShip();
		fleet.setGold(1000L);	// 초반 자금 주기
		fleet.setFatigue(0);	// 피로도
		fleet.setTurn(1L);		// 턴
		return fleet;
	}
}
