package com.pack.PetPeerShop.controller;
import java.security.Principal;
import java.util.List;
import java.util.Set;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.pack.PetPeerShop.model.Pets;
import com.pack.PetPeerShop.model.User;
import com.pack.PetPeerShop.service.PetsService;
import com.pack.PetPeerShop.service.UserService;
import com.pack.PetPeerShop.validator.UserValidator;


@Controller
public class UserController {
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private PetsService petService;
    
    @Autowired
    private UserValidator uservalidater;
    
    @GetMapping("/")
    public String welcome(Model model) {
    	List<Pets> list=petService.fetchAll();
    	 model.addAttribute("plist", list);
        return "home";
    }
    
   // @RequestMapping(value="/",method=RequestMethod.GET)
    //public String registration(ModelMap m,@ModelAttribute("registerform"))
    //m.addAttribute("registerform",new User());
    
   @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("registerform", new User());
        return "register";
    }
    
    @PostMapping("/register")
    public String saveUser(@Valid @ModelAttribute("registerform") User user,Model model,BindingResult result) {
    	uservalidater.validate(user, result);
    	String resultpage="";
        if (result.hasErrors()) {
            return "register";
        }
        else {
        	//user.setId(60l);
        userService.save(user);
       return "redirect:/login";
    }
    }
   
    
   
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");
        return "login";
    }
   @GetMapping("/addpet")
	public String addpet(Model model) {
		model.addAttribute("addpet", new Pets());
		return "addpet";
	}
    @PostMapping("/savepet")
    public String Petsadded(@Valid @ModelAttribute("addpet") Pets pets,Model model,BindingResult result) {
    	 String resultpage="";
        if (result.hasErrors()) {
            return "/addpet";
        }
        else{
        petService.savePets(pets);
        resultpage= "redirect:/getpets";
    }
        return resultpage;
    }
    @GetMapping("/getpets")
    public String getPets(Model model) {
    	List<Pets> list=petService.fetchAll();
        model.addAttribute("plist",list);
        return "home";
    }

    @PostMapping("/addpet")
    public String addPet(@ModelAttribute("pet") Pets pet, Model model) {
        petService.savePets(pet);
        List<Pets> list = petService.fetchAll();
        model.addAttribute("petsList", list);
        return "home";
    }
    
    @RequestMapping(value="/buy/{pets.pet_id}",method=RequestMethod.GET)
	public String buy(@PathVariable("pets.pet_id") Integer  eid,Model m,Principal principal) {
		Pets p = petService.fetchBYId(eid);
	   String username=principal.getName();
	   User user=userService.findByUsername(username);
	   Long id=user.getId();
		p.setUser(user);
		petService.savePets(p);
		
		
		return "redirect:/getpets";
		
		
	}
    @RequestMapping(value="/mypets",method=RequestMethod.GET)
	public String mypets(Model m,Principal principal) {
		String username=principal.getName();
		User u = userService.findByUsername(username);
		Long id=u.getId();
	   List<Pets> p = petService.findAllById(id);
	   m.addAttribute("petlist", p);
		return "mypets";
	}
	
    
    @GetMapping("/logout")
    public String logout() {
        return "/login";
    }

}
