package com.vasyerp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.vasyerp.model.Person;
import com.vasyerp.services.PersonServices;

@Controller
public class PersonController {
	@Autowired
	PersonServices personServices;

	@GetMapping("/")
	public ModelAndView getPerson(ModelAndView mav) {
		List<Person> personlist=personServices.getAllPerson();
		mav.addObject("personlist", personlist);
		mav.setViewName("home");
		return mav;
	}
	@GetMapping("/addperson")
	public ModelAndView addPerson(ModelAndView mav) {
		Person person=new Person();
		mav.addObject(person);
		mav.setViewName("addperson");
		return mav;
	}
	@PostMapping("/saveperson")
	public ModelAndView savePerson(@ModelAttribute("Person") Person person) {
		personServices.addPerson(person);
		return new ModelAndView("redirect:/");
	}
	@GetMapping("/editperson")
	public ModelAndView editPerson(HttpServletRequest request) {
		long personId=Long.parseLong(request.getParameter("personId"));
		Person person=personServices.getPersonById(personId);
		ModelAndView mav=new ModelAndView("editperson");
		mav.addObject("person",person);
		return mav;
	}
	@GetMapping("/deleteperson")
	public ModelAndView deletePerson(HttpServletRequest request) {
		long personId=Long.parseLong(request.getParameter("personId"));
		personServices.deletePerson(personId);
		return new ModelAndView("redirect:/");
	}

}
