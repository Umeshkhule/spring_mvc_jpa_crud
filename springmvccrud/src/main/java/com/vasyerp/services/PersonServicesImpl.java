package com.vasyerp.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vasyerp.model.Person;
import com.vasyerp.repository.PersonRepository;

@Service
public class PersonServicesImpl implements PersonServices {
	@Autowired
	PersonRepository personRepository;

	@Override
	public void addPerson(Person person) {
		personRepository.save(person);
	}

	@Override
	public void updatePerson(Person person) {
		personRepository.save(person);
	}

	@Override
	public List<Person> getAllPerson() {
		return personRepository.findAll();
	}

	@Override
	public Person getPersonById(long personId) {
		return personRepository.findById(personId).get();
	}

	@Override
	public void deletePerson(long personId) {
		Person person=personRepository.getById(personId);
		personRepository.delete(person);
	}
}