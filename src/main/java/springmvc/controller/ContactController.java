package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class ContactController {
	
	@Autowired
	private UserService userService;
	
	@ModelAttribute
	public void commonDataForModel(Model m) {
		m.addAttribute("h","Learn coding with Amit");
		m.addAttribute("desc","Learn & practice with me");
	}
	
	@RequestMapping("/contact")
	public String showForm() {
		return "contact";
	}
	
	@RequestMapping(path="/registerform", method=RequestMethod.POST)
	public String registerForm(@ModelAttribute User user , Model model) {
		System.out.println(user);
		
		if(user.getName().isEmpty() || user.getEmail().isEmpty() ||  user.getPassword().isEmpty()) {
			return "redirect:/contact";
		}
		
		int userCreatedId =  this.userService.createUser(user);
		model.addAttribute("msg", "User created successfull with id "+userCreatedId);
		return "success";
	}
	
}


/*
 * @RequestMapping(path="/registerform", method=RequestMethod.POST) public
 * String registerForm(@RequestParam("email") String userEmail,
 * 
 * @RequestParam("password") String userpassword,
 * 
 * @RequestParam("name") String userName, Model model) {
 * 
 * model.addAttribute("name",userName); model.addAttribute("email",userEmail);
 * model.addAttribute("password",userpassword);
 * 
 * 
 * 
 * return "success"; }
 */