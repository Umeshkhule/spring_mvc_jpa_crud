package com.vasyerp.services;

import java.util.List;

import com.vasyerp.model.Person;

public interface PersonServices {
	public void addPerson(Person person);
	public void updatePerson(Person person);
	public List<Person> getAllPerson();
	public Person getPersonById(long personId);
	public void deletePerson(long personId);
}
