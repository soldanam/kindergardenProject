package com.kindergarden.service;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		/*
		 * String str = null; str.length();
		 */
		
		return "welcome";
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession hs) {
		System.out.println("logout");
		hs.invalidate();
		return "login";
	}
	@RequestMapping(value="/new")
	public String nw() {
		System.out.println("new");
		return "NewFile";
	}
	
	@RequestMapping(value="/main")
	public String main() {
		System.out.println("main");
		return "main";
	}
	
	
	@RequestMapping(value="/kidsNote")
	public String kidsnote() {
		System.out.println("kidsNote");
		return "kidsnote";
	}
	
	 @RequestMapping(value="/Notice")
	 	public String newsletter() {
	 		System.out.println("newsletter");
	 		return "boardFile";
	 	}
	@RequestMapping(value="/schedule")
	public String Schedule() {
		System.out.println("Schedule");
		return "schedule";
	}
	
	@RequestMapping(value="/album")
	public String album() {
		System.out.println("album");
		return "album";
	}
	
	@RequestMapping(value="/message")
	public String message() {
		System.out.println("message");
		return "message";
	}
	
	@RequestMapping(value="/consentform")
	public String consentform() {
		System.out.println("consentform");
		return "consentform";
	}
	
	
	
	   @RequestMapping(value = "/map", method = RequestMethod.GET)
	   public String boardDropzone(HttpSession session) {
	      logger.info("/map");
	      return "map/map";
	   }
	
	
}
