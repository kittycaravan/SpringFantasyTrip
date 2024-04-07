package com.peisia.spring.ft.game.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.peisia.spring.ft.game.dto.DtoCity;
import com.peisia.spring.ft.game.dto.DtoStateInfo;
import com.peisia.spring.ft.game.model.ModelCmdProc;
import com.peisia.spring.ft.game.param.GameParam;
import com.peisia.spring.ft.game.service.ServiceCargo;
import com.peisia.spring.ft.game.service.ServiceCity;
import com.peisia.spring.ft.game.service.ServiceCityAToB;
import com.peisia.spring.ft.game.service.ServiceCmd;
import com.peisia.spring.ft.game.service.ServicePlayer;
import com.peisia.spring.ft.game.service.ServiceStateInfo;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/game/*")
@AllArgsConstructor
@Controller
@Log4j
public class ControllerGame {
	ServicePlayer servicePlayer;
	ServiceCmd serviceCmd;
	ServiceStateInfo serviceStateInfo;
	ServiceCity serviceCity;
	ServiceCityAToB serviceCityAToB;
	ServiceCargo serviceCargo;
	
	@GetMapping("/start")
	public void start() {}
	
	@GetMapping("/city")
	public void city(GameParam p, Model m) {
		//상태정보를 다 가져옴
		DtoStateInfo stateInfo = serviceStateInfo.getAll();
		
		DtoCity dc = serviceCity.getCity(stateInfo.getCurrent_loc());
		
		//cmd 처리
		//cmd 를 먼저 처리하고 아래에서 정보를 다시 가져와 화면을 갱신하게 함
		//파람을 다 전달
		ModelCmdProc mcp = serviceCmd.proc(m,p,dc,serviceStateInfo,serviceCityAToB,serviceCity,serviceCargo);
		m.addAttribute("mcp",mcp);		
		
		//상태정보의 플레이어가 현재 위치한 도시 번호로 도시 정보 불러옴
		//(현 버전까지는 도시끼리만 이동하는 개념임) 
		m.addAttribute("city", dc);	
		
		//디비에서 도시 공통 상단 상태 창 정보를 가져와서 모델에 담음.
		stateInfo = serviceStateInfo.getAll();	// 갱신
		m.addAttribute("state", stateInfo);
		
		//학습참고 - 아래에 모델에 loc,cmd를 넣는것 처럼 다시 계속 가져갈 필요가 있는 변수들을
		//다시 전달하지 않아도 위에
		//GameParam p 로 넘어온 경우 스프링에서 알아서 이 컨트롤러 함수가 종료된 후
		//이동 되는 페이지로 값을 전달함
		//단, 변수명은 클래스 명인 GameParam 의 맨 앞자를 소문자로 바꾼 gameParam 변수로 넘어감
		//그래서 el로는 ${gameParam} 하고 꺼내면 되고
		//멤버는 ${gameParam.모모} 식으로 꺼내면 됨.
		//
		//모델 세팅
//		m.addAttribute("loc", loc);
//		m.addAttribute("cmd", cmd);
//		m.addAttribute("loc", p.getLoc());
//		m.addAttribute("cmd", p.getCmd());
		
		//cmd 처리 후 다시 원 화면으로 돌아가는 구조임.
		//분기는 loc 값으로 알아서 됨
	}
	@GetMapping("/gameloading")
	public String gameloading(HttpSession s) {
		log.info("==== 게임 로딩중.... ====");
		//유저의 현재 위치 가져오기
		return "redirect:/game/city?loc=city";
	}	
	
	@GetMapping("/move")
	public String move(@RequestParam int to) {
		serviceStateInfo.updateLoc(to);	//이동 처리
//		return "/game/city?loc=city";	// ? get방식 붙이는건 허용 안됨. 404 에러남.
		//모델에 추가하거나. 리다이렉트는 ? get 방식 붙이기 허용됨.
		return "redirect:/game/city?loc=city";
	}
}