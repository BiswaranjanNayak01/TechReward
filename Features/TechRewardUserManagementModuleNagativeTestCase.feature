Feature: TechReward User Management module operations and validations for negative test cases

  Background:Launch the application and browser
    Given Launch the application TechReward
    Then Application should be open page with title "Login - Admin Panel"

  @Functional @Negative
  Scenario: Add user in Manage Users of User Management menu and enter duplicate Contact no
    Given Enter user name testing@yopmail.com and password Admin@123
    And Click on Submit button
    Then Application should be open page with title "Dashboard - Admin Panel"
    Given Click on side toggle of menu bar
    Given Go to menu bar and click on "User Management"
    And Click on manage users
    And Click on add button to create user
    And Enter First name "Kalpesh"
    And Enter Last name "Nayak"
    And Enter Job title "Test Automation"
    And Enter Contact no to be 9776462048
    And Enter email id to be unique
    And Enter Password "Kas3pesh@1857"
    And Enter Reward point "9"
    And Click on user group
    And Select user group "SBI"
    And Close the user group list
    When Click on Submit button and create user
    Then Verify the error message is "Contact no has already been taken"

  @Functional @Negative
  Scenario: Add user in Manage Users of User Management menu with missing user group
    Given Enter user name testing@yopmail.com and password Admin@123
    And Click on Submit button
    Then Application should be open page with title "Dashboard - Admin Panel"
    Given Click on side toggle of menu bar
    Given Go to menu bar and click on "User Management"
    And Click on manage users
    And Click on add button to create user
    And Enter First name "Kalpesh"
    And Enter Last name "Nayak"
    And Enter Job title "Test Automation"
    And Enter Contact no to be unique
    And Enter email id to be unique
    And Enter Password "Kas3pesh@1857"
    And Enter Reward point "9"
    When Click on Submit button and create user
    Then Verify the error message is "User group required"

  @Functional @Negative
  Scenario: Add user in Manage Users of User Management menu and enter Contact no less than 10 digits
    Given Enter user name testing@yopmail.com and password Admin@123
    And Click on Submit button
    Then Application should be open page with title "Dashboard - Admin Panel"
    Given Click on side toggle of menu bar
    Given Go to menu bar and click on "User Management"
    And Click on manage users
    And Click on add button to create user
    And Enter First name "Kalpesh"
    And Enter Last name "Nayak"
    And Enter Job title "Test Automation"
    And Enter Contact no to be 97764620
    And Enter email id to be unique
    And Enter Password "Kas3pesh@1857"
    And Enter Reward point "9"
    And Click on user group
    And Select user group "SBI"
    And Close the user group list
    When Click on Submit button and create user
    Then Verify the error message is "Contact no must be 10 digits"


  @Functional1 @Negative
  Scenario: Add user in Manage Users of User Management menu and enter duplicate email id
    Given Enter user name testing@yopmail.com and password Admin@123
    And Click on Submit button
    Then Application should be open page with title "Dashboard - Admin Panel"
    Given Click on side toggle of menu bar
    Given Go to menu bar and click on "User Management"
    And Click on manage users
    And Click on add button to create user
    And Enter First name "Kalpesh"
    And Enter Last name "Nayak"
    And Enter Job title "Test Automation"
    And Enter Contact no to be unique
    And Enter email id to be pguser9012357897@gmail.com
    And Enter Password "Kas3pesh@1857"
    And Enter Reward point "9"
    And Click on user group
    And Select user group "SBI"
    And Close the user group list
    When Click on Submit button and create user
    Then Verify the error message is "Email has already been taken."

  @Functional @Negative
  Scenario: Add user in Manage Users of User Management menu and enter email id missing @ symbol
    Given Enter user name testing@yopmail.com and password Admin@123
    And Click on Submit button
    Then Application should be open page with title "Dashboard - Admin Panel"
    Given Click on side toggle of menu bar
    Given Go to menu bar and click on "User Management"
    And Click on manage users
    And Click on add button to create user
    And Enter First name "Kalpesh"
    And Enter Last name "Nayak"
    And Enter Job title "Test Automation"
    And Enter Contact no to be unique
    And Enter email id to be kalpesh9909gmail.com
    And Enter Password "Kas3pesh@1857"
    And Enter Reward point "9"
    And Click on user group
    And Select user group "SBI"
    And Close the user group list
    When Click on Submit button and create user
    Then Verify the error message is "Invalid email"

  @Functional @Negative
  Scenario: Add user in Manage Users of User Management menu and enter email id missing .com
    Given Enter user name testing@yopmail.com and password Admin@123
    And Click on Submit button
    Then Application should be open page with title "Dashboard - Admin Panel"
    Given Click on side toggle of menu bar
    Given Go to menu bar and click on "User Management"
    And Click on manage users
    And Click on add button to create user
    And Enter First name "Kalpesh"
    And Enter Last name "Nayak"
    And Enter Job title "Test Automation"
    And Enter Contact no to be unique
    And Enter email id to be kalpesh9909gmail
    And Enter Password "Kas3pesh@1857"
    And Enter Reward point "9"
    And Click on user group
    And Select user group "SBI"
    And Close the user group list
    When Click on Submit button and create user
    Then Verify the error message is "Invalid email"

  @Functional @Negative
  Scenario: Update or edit the user with mail id missing .com
    Given Enter user name testing@yopmail.com and password Admin@123
    And Click on Submit button
    Then Application should be open page with title "Dashboard - Admin Panel"
    Given Click on side toggle of menu bar
    Given Go to menu bar and click on "User Management"
    And Click on manage users
    And Update or edit the user of row 1
    And Enter First name "Kalpesh"
    And Enter Last name "Nayak"
    And Enter Job title "Test Automation"
    And Enter Contact no to be unique
    And Enter email id to be kalpesh9909@gmail
    And Select radio type of "Credit Point"
    And Enter Reward point "9"
    And Click on user group
    And Select user group "New group1"
    And Close the user group list
    And Click on Submit button and update user
    Then Verify the error message is "Invalid email"

  @Functional @Negative
  Scenario: Update or edit the user with mail id missing @ symbol
    Given Enter user name testing@yopmail.com and password Admin@123
    And Click on Submit button
    Then Application should be open page with title "Dashboard - Admin Panel"
    Given Click on side toggle of menu bar
    Given Go to menu bar and click on "User Management"
    And Click on manage users
    And Update or edit the user of row 1
    And Enter First name "Kalpesh"
    And Enter Last name "Nayak"
    And Enter Job title "Test Automation"
    And Enter Contact no to be unique
    And Enter email id to be kalpesh9909gmail.com
    And Select radio type of "Credit Point"
    And Enter Reward point "9"
    And Click on user group
    And Select user group "New group1"
    And Close the user group list
    And Click on Submit button and update user
    Then Verify the error message is "Invalid email"

  @Functional @Negative
  Scenario: Update or edit the user with duplicate mail id
    Given Enter user name testing@yopmail.com and password Admin@123
    And Click on Submit button
    Then Application should be open page with title "Dashboard - Admin Panel"
    Given Click on side toggle of menu bar
    Given Go to menu bar and click on "User Management"
    And Click on manage users
    And Update or edit the user of row 1
    And Enter First name "Kalpesh"
    And Enter Last name "Nayak"
    And Enter Job title "Test Automation"
    And Enter Contact no to be unique
    And Enter email id to be pguser9012357897@gmail.com
    And Select radio type of "Credit Point"
    And Enter Reward point "9"
    And Click on user group
    And Select user group "New group1"
    And Close the user group list
    And Click on Submit button and update user
    Then Verify the error message is "Email has already been taken."

  @Functional @Negative
  Scenario: Update or edit the user with duplicate Contact no
    Given Enter user name testing@yopmail.com and password Admin@123
    And Click on Submit button
    Then Application should be open page with title "Dashboard - Admin Panel"
    Given Click on side toggle of menu bar
    Given Go to menu bar and click on "User Management"
    And Click on manage users
    And Update or edit the user of row 1
    And Enter First name "Kalpesh"
    And Enter Last name "Nayak"
    And Enter Job title "Test Automation"
    And Enter Contact no to be 9776462048
    And Enter email id to be unique
    And Select radio type of "Credit Point"
    And Enter Reward point "9"
    And Click on user group
    And Select user group "SBI"
    And Close the user group list
    When Click on Submit button and create user
    Then Verify the error message is "Contact no has already been taken"

  @Functional @Negative
  Scenario: Update or edit the user with missing user group
    Given Enter user name testing@yopmail.com and password Admin@123
    And Click on Submit button
    Then Application should be open page with title "Dashboard - Admin Panel"
    Given Click on side toggle of menu bar
    Given Go to menu bar and click on "User Management"
    And Click on manage users
    And Update or edit the user of row 1
    And Enter First name "Kalpesh"
    And Enter Last name "Nayak"
    And Enter Job title "Test Automation"
    And Enter Contact no to be unique
    And Enter email id to be unique
    And Select radio type of "Credit Point"
    And Enter Reward point "9"
    And Click on user group
    And Uncheck the user group
    And Close the user group list
    And Click on Submit button and update user
    Then Verify the error message is "User group required"

  @Functional @Negative
  Scenario: Update or edit the user with Contact no less than 10 digits
    Given Enter user name testing@yopmail.com and password Admin@123
    And Click on Submit button
    Then Application should be open page with title "Dashboard - Admin Panel"
    Given Click on side toggle of menu bar
    Given Go to menu bar and click on "User Management"
    And Click on manage users
    And Update or edit the user of row 1
    And Enter First name "Kalpesh"
    And Enter Last name "Nayak"
    And Enter Job title "Test Automation"
    And Enter Contact no to be 97764620
    And Enter email id to be unique
    And Select radio type of "Credit Point"
    And Enter Reward point "9"
    And Click on user group
    And Select user group "SBI"
    And Close the user group list
    When Click on Submit button and create user
    Then Verify the error message is "Contact no must be 10 digits"
