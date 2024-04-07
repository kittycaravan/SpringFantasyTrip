package com.peisia.spring.ft.game.mapper;

import com.peisia.spring.ft.game.dto.DtoStateInfo;

public interface MapperStateInfo {
	void updateGold(long addGold);
	DtoStateInfo getAll();
	void updateLoc(int loc);	
}
