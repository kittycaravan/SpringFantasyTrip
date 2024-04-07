package com.peisia.spring.ft.game.model;

import java.util.ArrayList;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
/* 명령처리모델(화면에 출력이나 입력을 받을게 있는 경우 이 객체에 데이터를 실어 보낸다) */
public class ModelCmdProc {
	String msg;			//기본 메세지
	String question;	//질문

	@Setter	//이거 붙이면 롬복이 세터 안만들어줌. 내가 따로 만들고 싶을때 씀. 게터는 만들어짐
	ArrayList<String> choices;	//보기 ex. 예/아니오, 1,2,3,4 또는 1.모모, 2.모모 ....
	
	@Setter //이거 붙이면 롬복이 세터 안만들어줌. 내가 따로 만들고 싶을때 씀.
	ArrayList<String> answerProcCmdNames;	//각 보기에 답했을 시 처리할 cmd 이름들

	public void setChoices(String ...strings ) {
		ArrayList<String> c = new ArrayList<>();
		for(String s:strings) {
			c.add(s);
		}
		this.choices = c;
	}
	
	public void setAnswerProcCmdNames(String ...strings ) {
		ArrayList<String> c = new ArrayList<>();
		for(String s:strings) {
			c.add(s);
		}
		this.answerProcCmdNames = c;
	}
	
}
