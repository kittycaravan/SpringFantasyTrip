package com.peisia.spring.ft.game.mapper;

import com.peisia.spring.ft.game.dto.DtoCity;

public interface MapperCity {
	DtoCity getCity(int no);
	void updateManLiking(DtoCity dtoCity);
}
