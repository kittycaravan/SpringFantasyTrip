package com.peisia.spring.ft.game.service;

import org.springframework.stereotype.Service;

import com.peisia.spring.ft.game.dto.DtoCity;
import com.peisia.spring.ft.game.mapper.MapperCity;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ServiceCityImpl implements ServiceCity{
	MapperCity m;
	@Override
	public DtoCity getCity(int no) {
		return m.getCity(no);
	}
	@Override
	public void updateManLiking(DtoCity dc) {
		m.updateManLiking(dc);
	}
}
