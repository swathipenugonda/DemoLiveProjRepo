Feature: Registration functionality scenarios

@Register @One
 Scenario: Verify whether the user is able to register into the application by providing all the details
   Given I launch the application 
   And I navigate to Account Registration page
   When I provide  all the below valid details
   |Firstname | Sai 									|
   |Lastname  | p   									|
   |Email     | selenium2019@gmail.com|
   |Telephone | 9876543210						|
   |Password	| selemium123						|
   And I select the privacy Policy
   And I click on Continue Button
   Then I should see that the User account has successfully created