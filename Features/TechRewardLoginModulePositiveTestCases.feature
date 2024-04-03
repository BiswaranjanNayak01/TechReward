Feature: TechReward Login module operations and validations

  Background:Launch the application and browser
    Given Launch the application TechReward
    Then Application should be open page with title "Login - Admin Panel"

  @Functional @Positive
  Scenario: Verify Application login with valid credentials
    Given Enter user name testing@yopmail.com and password Admin@123
    And Click on Submit button
    Then Application should be open page with title "Dashboard - Admin Panel"
