package com.peisia.spring.ft.game.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.peisia.spring.ft.game.dto.DtoCargo;
import com.peisia.spring.ft.game.mapper.MapperCargo;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ServiceCargoImpl implements ServiceCargo {
	MapperCargo mc;
	@Override
	public ArrayList<DtoCargo> getAll() {
		return mc.getAll();
	}

}