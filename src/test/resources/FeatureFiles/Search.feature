Feature:Search functionality scenario

@Search @One
Scenario: Verify whether the user is able to search for the product
   Given I launch the application
   When I search for a product "Samsung SyncMaster 941BW"
   Then I should  see the  product in the search result
 
 @Search @Two  
 Scenario: Verify whether the user is informed when the product beeing search is not avaliable
    Given I launch the application
    When I search for a product "Apple Iphone"  
    Then I should see a message informing "Your shopping cart is empty!"