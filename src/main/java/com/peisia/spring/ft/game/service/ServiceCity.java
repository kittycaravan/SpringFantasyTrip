package com.peisia.spring.ft.game.service;

import com.peisia.spring.ft.game.dto.DtoCity;

public interface ServiceCity {
	DtoCity getCity(int no);
	void updateManLiking(DtoCity dtoCity);
}
