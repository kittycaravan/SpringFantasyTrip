package com.peisia.spring.ft.game.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.peisia.spring.ft.game.dto.DtoCity;
import com.peisia.spring.ft.game.dto.DtoCityAToB;
import com.peisia.spring.ft.game.mapper.MapperCity;
import com.peisia.spring.ft.game.mapper.MapperCityAToB;
import com.peisia.spring.ft.game.model.ModelCityAToB;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ServiceCityAToBImpl implements ServiceCityAToB{
	MapperCityAToB m;
	MapperCity mapperCitty;
	@Override
	public ArrayList<DtoCityAToB> getMovableCityDtos(int no) {
		return m.getMovableCities(no);
	}
	@Override
	public ArrayList<ModelCityAToB> getMovableCities(int no) {
		ArrayList<ModelCityAToB> mList = new ArrayList<>();
		
		ArrayList<DtoCityAToB> list = getMovableCityDtos(no);
		
		for(DtoCityAToB d:list) {
			//매퍼 시티에서 저 번호로 도시명 알아와야함
			//주의. 매개변수로 받은 현재 항구 번호가 아니라 도착지 항구번호를 넣어서 항구 정보 구해야 함.
			DtoCity city = mapperCitty.getCity(d.getB());	
			
			//이 함수에서 단순하게 리스트 전달하지 않고 
			//도착 도시 이름, no, 거리를 담은 리스트를 보내야함
			//그러려면 새 클래스가 필요
			//이 클래스는 dto 는 아님
			//모델이 적합하여 모델클래스를 추가했고 그 모델 클래스 리스트를 리턴하게 했음.
			ModelCityAToB m = new ModelCityAToB(city.getNo(),city.getName(),d.getDistance());
			mList.add(m);
		}
		
		return mList;
	}
	
}