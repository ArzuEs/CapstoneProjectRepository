Feature: Account Feature

  Background: 
    Given User is on retail website
    When User click on Sign in option
    And User enter email 'test@gamil.com' and password 'Hadis@214'
    And User click on login button
    And User should be logged in into Account
    When User click on Account option

  @Account1
  Scenario: Verify User can update Profile Information
    And User update Name 'Hadis' and Phone '2022142144'
    And User click on Update button
    Then user profile information should be updated

  #@AccountPassword
  #Scenario: Verify User can Update password
    #And User enter below information
     # | previousPassword | newPassword | confirmPassword |
      #| Test@234         | Hadis@214   | Hadis@214       |
    #And User click on Change Password button
    #Then a message should be displayed 'Password Updated Successfully'

  @AcountPayment
  Scenario: Verify User can add a payment method
    And User click on Add a payment method link
    And User fill Debit or credit card information
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 2386588056932865 | Hadis      |               1 |           2024 |          224 |
    And User click on Add your card button
    Then a message should be displayed‘Payment Method added sucessfully’

  @AccountPaymentUpdate
  Scenario: Verify User can edit Debit or Credit card
    And User click on Edit option of card section
    And user edit information with below data
      | cardNumber       | nameOnCard  | expirationMonth | expirationYear | securityCode |
      | 2222385297569324 | Hadis Hadis |               1 |           2025 |          222 |
    And user click on Update Your Card button
    Then a message should be displayed ‘Payment Method updated Successfully’

  @Acountpaymentremove
  Scenario: Verify User can remove Debit or Credit card
    And User click on remove option of card section
    Then payment details should be removed

  @Address
  Scenario: Verify User can add an Address
    And User click on Add address option
    And user fill new address form with below information
      | country     | fullName    | phoneNumber | streetAddress | apt | city       | state      | zipCode |
      | Afghanistan | Hadis Hadis |  2021238762 | 12main st     | 406 | Badakhshan | Badakhshan |   22040 |
    And User click Add Your Address button
    Then a message should be displayed ‘Address Added Successfully’

  @AddressEdit
  Scenario: Verify User can edit an Address added on account
    And User click on edit address option
    And user fill new address form with below information
      | country     | fullName | phoneNumber | streetAddress | apt | city     | state | zipCode |
      | Afghanistan | Ahmad    | 0785546546 | 3 Macroyan     | 765 | Macroyan | Kabul |    23786 |
    And User click update Your Address button
    Then a message should be displayed ‘Address Updated Successfully’

  @RemoveAddress
  Scenario: Verify User can remove Address from Account
    And User click on remove option of Address section
    Then Address details should be removed
