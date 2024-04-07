package com.peisia.spring.ft.game.mapper;

import java.util.ArrayList;

import com.peisia.spring.ft.game.dto.DtoCityAToB;

public interface MapperCityAToB {
	ArrayList<DtoCityAToB> getMovableCities(int no);
}
