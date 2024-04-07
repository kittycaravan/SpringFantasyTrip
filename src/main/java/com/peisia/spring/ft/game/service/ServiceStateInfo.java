package com.peisia.spring.ft.game.service;

import com.peisia.spring.ft.game.dto.DtoStateInfo;

public interface ServiceStateInfo {
	void updateGold(long addGold);
	void updateLoc(int loc);
	DtoStateInfo getAll();
}
