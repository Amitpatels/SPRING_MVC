package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class RedirectController {
	
	//1 way ==> redirect prefix 
	@RequestMapping("/one")
	public String one() {
		System.out.println("This is one handler!");
		return "redirect:/two";
	}
	
	@RequestMapping("/two")
	public String two() {
		System.out.println("This is second handler [Enjoy]");
		return "contact";
	}
	
	//2 way ==> redirectView 
	@RequestMapping("/three")
	public RedirectView three() {
		System.out.println("This is Third handler redirectView");
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("https://www.google.com");
		return redirectView;
	}
	
	
	
}
