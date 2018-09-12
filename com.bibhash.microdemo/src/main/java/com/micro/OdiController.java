package com.micro;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OdiController {
	@RequestMapping(value="/odi", method=RequestMethod.GET)
	public ArrayList<TeamRecords> first()
	{
		return new OdiDAO().getOdiRecords();
	}

}
