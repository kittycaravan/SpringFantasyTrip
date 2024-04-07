package com.peisia.spring.ft.game.service;

import java.util.ArrayList;

import com.peisia.spring.ft.game.dto.DtoCityAToB;
import com.peisia.spring.ft.game.model.ModelCityAToB;

public interface ServiceCityAToB {
	ArrayList<DtoCityAToB> getMovableCityDtos(int no);
	ArrayList<ModelCityAToB> getMovableCities(int no);
}
