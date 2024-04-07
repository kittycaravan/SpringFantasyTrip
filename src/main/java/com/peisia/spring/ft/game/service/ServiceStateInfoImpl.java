package com.peisia.spring.ft.game.service;

import org.springframework.stereotype.Service;

import com.peisia.spring.ft.game.dto.DtoStateInfo;
import com.peisia.spring.ft.game.mapper.MapperStateInfo;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ServiceStateInfoImpl implements ServiceStateInfo{
	MapperStateInfo mapper;
	@Override
	public void updateGold(long addGold) {
		mapper.updateGold(addGold);
	}

	@Override
	public DtoStateInfo getAll() {
		return mapper.getAll();
	}

	@Override
	public void updateLoc(int loc) {
		mapper.updateLoc(loc);
	}
}