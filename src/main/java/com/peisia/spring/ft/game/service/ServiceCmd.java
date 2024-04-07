package com.peisia.spring.ft.game.service;

import org.springframework.ui.Model;

import com.peisia.spring.ft.game.dto.DtoCity;
import com.peisia.spring.ft.game.model.ModelCmdProc;
import com.peisia.spring.ft.game.param.GameParam;

public interface ServiceCmd {
//	public ModelCmdProc proc(String cmd, ServiceStateInfo ssi);
//	public ModelCmdProc proc(GameParam p, ServiceStateInfo ssi);
	public ModelCmdProc proc(Model m, GameParam p, DtoCity dc, ServiceStateInfo ssi, ServiceCityAToB serviceCityAToB, ServiceCity serviceCity, ServiceCargo serviceCargo);
}
