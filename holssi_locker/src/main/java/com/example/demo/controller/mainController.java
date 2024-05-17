package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class mainController {
	
	@GetMapping(value= {""})
	public String index() {
		return "home";
	}

	@GetMapping(value= {"home"})
	public String homepage() {
		return "home";
	}
	
	@GetMapping(value = {"findLocker"})
	public String findLocker() {
		return "page/locker/findLocker";
	}

	@GetMapping(value = {"cs/event"})
	public String csEvent() {
		return "page/cs/event";
	}

	@GetMapping(value = {"cs/how"})
	public String csHow() {
		return "page/cs/how";
	}

	@GetMapping(value = {"cs/notice"})
	public String csNotice() {
		return "page/cs/notice";
	}

	@GetMapping(value = {"cs/question"})
	public String csQuestion() {
		return "page/cs/question";
	}

	@GetMapping(value = {"myLocker/mylocker01"})
	public String mylocker01() {
		return "page/myLocker/mylocker01";
	}

	@GetMapping(value = {"myLocker/mylocker02"})
	public String mylocker02() {
		return "page/myLocker/mylocker02";
	}

	@GetMapping(value = {"myLocker/mylocker03"})
	public String mylocker03() {
		return "page/myLocker/mylocker03";
	}

	@GetMapping(value = {"myLocker/mylocker04"})
	public String mylocker04() {
		return "page/myLocker/mylocker04";
	}

	@GetMapping(value = {"myLocker/mylocker05"})
	public String mylocker05() {
		return "page/myLocker/mylocker05";
	}

	@GetMapping(value = {"myLocker/mylocker06"})
	public String mylocker06() {
		return "page/myLocker/mylocker06";
	}

	@GetMapping(value = {"account/find"})
	public String accountFind() {
		return "page/account/find";
	}

	@GetMapping(value = {"account/join"})
	public String accountJoin() {
		return "page/account/join";
	}

	@GetMapping(value = {"account/login"})
	public String accountLogin() {
		return "page/account/login";
	}



	


}
