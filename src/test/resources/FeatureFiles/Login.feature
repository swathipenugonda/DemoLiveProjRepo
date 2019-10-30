Feature: Login functionallity scenarios

@Login @One
Scenario: Verify whether the user is able  to login with valid credentials
     Given I launch the application 
     And I navigate to Login Page
     When I login to the Application using Username "saip12@gmail.com" and password "sai1234	"
     Then I should see that the user is able to login successfully
  
  @Login @Two   
 Scenario: Verify whether the user is able to login with innvalid credentials 
        Given I launch the application 
        And I navigate to Login Page
        When I login to the Application using Username "saip12@gmail.com" and password "sai123	"
        Then I should see an error message that the credentials are invalid 
        
        @Login @Three   
 Scenario: Verify whether the user is able to login without providing credentials
      Given I launch the application 
      And I navigate to Login Page
      When I login to the Application using Username "" and password ""
      Then I should see an error message that the credentials are invalid 
      
      @Login @Four   
 Scenario: Verify wheher the user is able to reset the forgotten password
        Given I launch the application 
        And I navigate to Login Page
        When I reset the forgotten password for email "saip12@gmail.com"
        Then I should see a message informing the user that information related to restting the password have been sent to email address