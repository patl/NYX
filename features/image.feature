Feature: Check Log in functionality
  Background:
    Given open the site
    Then close the newsletter pop-up

    Scenario Outline:
     # When user navigates to <correctpage>
      Then he take actual image for the <element>
      Then compare 2 images expected <expectedpath> with actual

      Examples:
      |correctpage|element|expectedpath|
      |            |header |C:\\Users\\ogboi\\OneDrive\\Documents\\GitHub\\NYX\\uitest\\expected.png|
