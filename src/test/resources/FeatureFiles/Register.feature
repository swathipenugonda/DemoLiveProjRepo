Feature: Registration functionality scenarios

@Register @One
 Scenario: Verify whether the user is able to register into the application by providing all the details
   Given I launch the application 
   And I navigate to Account Registration page
   When I provide  all the below valid details
   |Firstname | Sai 									|
   |Lastname  | p   									|
   |Email     | saip12@gmail.com|
   |Telephone | 9876543210						|
   |Password	| sai1234						|
   And I select the privacy Policy
   And I click on Continue Button
   Then I should see that the User account has successfully created
   
 @Register @Two
  Scenario: Verify whether the user is not allowed to register on skipping the mandatory fields
      Given I launch the application
      And I navigate to Account Registration page
      When I click on Continue Button
      Then  I should see that the user Account is not created
      And I should see the error message informing the user to fill the mandatory fields
      
     
  @Register @Three 
    Scenario: Verify whether the user is able to register into the application by opting for Newsletter subscription
    		 Given I launch the application 
   			 And I navigate to Account Registration page
   			 When I provide  all the below valid details
  			 |Firstname | Sai 									|
  			 |Lastname  | p   									|
  			 |Email     | saip123@gmail.com|
  			 |Telephone | 9876543210						|
  			 |Password	| sai123						|
  			 And I select the privacy Policy
  			 And I subscribe to NewsLetter
  			 And I click on Continue Button
  			 Then I should see that the User account has successfully created
  
 @Register @Four			 
 Scenario: Verify whether the user is register from creating  a duplicate details
 					Given I launch the application 
   				And I navigate to Account Registration page
   				When I provide the below dulpicate details
   				 |Firstname | Sai 									|
  				 |Lastname  | p   									|
  				 |Email     | saip12@gmail.com|
  				 |Telephone | 9876543210						|
 				   |Password	| sai1234						|
 				  And I select the privacy Policy
   				And I click on Continue Button
   				Then I should see that the User is restricted from creating duplicate account