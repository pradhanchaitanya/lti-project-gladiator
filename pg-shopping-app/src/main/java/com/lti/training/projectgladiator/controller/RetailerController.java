package com.lti.training.projectgladiator.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.lti.training.projectgladiator.service.RetailerService;

@Controller
public class RetailerController {

	@Autowired
	RetailerService retailerService;
	
	
}
