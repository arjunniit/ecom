package com.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.service.RegisterService;



@Component
public class RegistrationHandler {

	public UserDetails startFlow() {
		return new UserDetails();
	}
	
	@Autowired RegisterService regser;
	
	public  void saveRegister(UserDetails userDetails){
		
		regser.saveOrUpdate(userDetails);
		
	}

	/*public String validateDetails(UserDetails userDetails, MessageContext messageContext) {
		String status = "success";
		if (userDetails.getUser_firstname().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("user_firstname")
					.defaultText("Username cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getUser_lastname().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("user_lastname")
					.defaultText("Username cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getMail_id().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("mail_id")
					.defaultText("User's email id cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getMobile_number() == null) {
			messageContext.addMessage(new MessageBuilder().error().source("mobile_number")
					.defaultText("User's mobile number cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getPassword() == null) {
			messageContext.addMessage(
					new MessageBuilder().error().source("password").defaultText("Please enter your password").build());
			status = "failure";
		}
		if (userDetails.getConfirm_password() == null) {
			messageContext.addMessage(new MessageBuilder().error().source("confirm_password")
					.defaultText("Please enter your password").build());
			status = "failure";
		}

		return status;
	}*/
}
