package springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	
	@RequestMapping("/home")
	public String home(Model model) {
		
		model.addAttribute("name","Amit Patel");
		model.addAttribute("id",15741);
		
		List<String> language = new ArrayList<String>();
		language.add("Java");
		language.add("C#");
		language.add("Python");
		language.add("AI");

		model.addAttribute("lang",language);
		
		return "index";
	}
	
	
	@RequestMapping("/help")
	public ModelAndView help() {
		
		ModelAndView modelAndView = new ModelAndView();
		
		//setting data
		modelAndView.addObject("name","Rahul");
		//setting view
		modelAndView.setViewName("help");
		
		List<Integer> marks = new ArrayList<Integer>();
		marks.add(20);
		marks.add(30);
		marks.add(40);
		marks.add(50);
		
		modelAndView.addObject("marks",marks);
		
		return modelAndView;
	}
	
	
}
