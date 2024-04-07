package com.peisia.spring.ft.game.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.peisia.spring.ft.game.dto.DtoCargo;
import com.peisia.spring.ft.game.dto.DtoCity;
import com.peisia.spring.ft.game.model.ModelCmdProc;
import com.peisia.spring.ft.game.param.GameParam;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ServiceCmdImpl implements ServiceCmd {
	@Override
	public ModelCmdProc proc(Model m, GameParam p, DtoCity dc, ServiceStateInfo ssi, ServiceCityAToB serviceCityAToB, ServiceCity serviceCity, ServiceCargo serviceCargo) {
		ModelCmdProc mcp = null;
		String cmd = p.getCmd();
		if(cmd!=null) {
			log.info("==== 명령처리:"+cmd);
			switch(cmd) {
			case "drink":
				log.info("==== 명령처리:술집-술마심-5골드소모");
				ssi.updateGold(-5);
				break;
			case "drink2":
				log.info("==== 명령처리:술집-술 또 마심-10골드소모");
				ssi.updateGold(-10);
				//임시로 선물 보유 여부가 아닌 골드를 일정 이상 보유했는지로 분기 처리
				mcp = new ModelCmdProc();
				if(ssi.getAll().getGold() > 1000) {
					mcp.setMsg("어머 이게 뭐예요? 예쁘네요.");
					mcp.setChoices("준다","안준다");
					mcp.setAnswerProcCmdNames("yes","no");
				} else {
					mcp.setMsg("저, 들어봐요. 빅뉴스에요! 마르세이유에서 조금 세공이 유행할 것 같대요.");
				}
				break;
			case "drink3":
				log.info("==== 명령처리:술집-선물 주기/안주기");
				//선물을 줬는지 안줬는지 분기
				mcp = new ModelCmdProc();
				String answer = p.getAnswer();
				if(answer.equals("yes")) {
					//임시로 선물이 아닌 골드를 100 소모하게함
					ssi.updateGold(-100);
					log.info("==== 명령처리:술집-100골드소모");
					log.info("==== 명령처리:술집-선물 줌");
					
					//현재 도시의 주점 종업원의 호감도 +1 처리
					dc.setBar_man_liking(dc.getBar_man_liking()+1);
					serviceCity.updateManLiking(dc);
					mcp.setMsg(
							String.format("고마워요! (❤호감도 +1) [❤%d/100]"
									, dc.getBar_man_liking())
					);
					
				} else {
					log.info("==== 명령처리:술집-선물 안줌");
					mcp.setMsg("참 예쁜데..");
				}
				break;
			case "sail":	//항구-출항
				//이동 가능한 항구를 나열해야됨
				//그래서 모델을 따로 만들었고 여기에 디비에서 가져온 데이터를 조합하여 화면 전송쪽 모델에 실었음.
				log.info(serviceCityAToB.getMovableCities(ssi.getAll().getCurrent_loc()));
				m.addAttribute("city_a_to_b",serviceCityAToB.getMovableCities(ssi.getAll().getCurrent_loc()));
				break;
			case "trade":	//교역소-교역. todo 임시: 진입시 1000골드 + 처리함
//				log.info("==== 명령처리:교역소-교역-돈범: 1000골드+");
//				ssi.updateGold(1000);
				
				//todo: 적재출력
				//임시
				//배는 기본 한대만 있음
				m.addAttribute("cargos",serviceCargo.getAll());
				
				break;
			}
		}
		return mcp; 
	}
}