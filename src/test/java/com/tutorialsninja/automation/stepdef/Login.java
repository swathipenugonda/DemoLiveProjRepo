package com.tutorialsninja.automation.stepdef;

import org.junit.Assert;

import com.tutorialsninja.automation.framework.Elements;
import com.tutorialsninja.automation.pages.ForgotPasswordPage;
import com.tutorialsninja.automation.pages.HeaderSection;
import com.tutorialsninja.automation.pages.LoginPage;
import com.tutorialsninja.automation.pages.MyAccountPage;

import cucumber.api.java.en.*;

public class Login {

	HeaderSection headerSection = new HeaderSection();
	LoginPage loginPage = new LoginPage();
	MyAccountPage myAccountPage = new MyAccountPage();
	ForgotPasswordPage forgotPasswordPage = new ForgotPasswordPage();
	
	@Given("^I navigate to Login Page$")
	public void i_navigate_to_Login_Page()  {
	  
		Elements.click(HeaderSection.myAccountLink);
		Elements.click(HeaderSection.login);
	}

	@When("^I login to the Application using Username \"([^\"]*)\" and password \"([^\"]*)\"$")
	public void i_login_to_the_Application_using_Username_and_password(String email, String password)  {
	   
		LoginPage.doLogin(email, password);
	}

	@Then("^I should see that the user is able to login successfully$")
	public void i_should_see_that_the_user_is_able_to_login_successfully() {
	   
	
		Assert.assertTrue(Elements.isDisplayed(MyAccountPage.registerAffiliateAccount));
	}
	
	@Then("^I should see an error message that the credentials are invalid$")
	public void i_should_see_an_error_message_that_the_credentials_are_invalid()  {
	    
		Assert.assertTrue(Elements.VerifyTextEquals(LoginPage.mainWarning, "Warning: No match for E-Mail Address and/or Password."));
	}

	
	@When("^I reset the forgotten password for email \"([^\"]*)\"$")
	public void i_reset_the_forgotten_password_for_email(String email)  {
	    
		Elements.click(LoginPage.forgotPassword);
		Elements.TypeText(ForgotPasswordPage.emailFeild, email);
		Elements.click(ForgotPasswordPage.continueButton);
	}

	@Then("^I should see a message informing the user that information related to restting the password have been sent to email address$")
	public void i_should_see_a_message_informing_the_user_that_information_related_to_restting_the_password_have_been_sent_to_email_address()  {
	    
		Assert.assertTrue(Elements.VerifyTextEquals(LoginPage.mainWarning, "An email with a confirmation link has been sent your email address."));
	}

}
