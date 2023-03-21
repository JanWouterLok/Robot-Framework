*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords/loginKeywords.robot
Resource    ../Resources/Variables/loginVariable.robot
Library     String
Test Setup  Navigate to HomePage
Test Teardown  Exit Browser


*** Test Cases ***
Maak een nieuw account aan en bevestig dat gebruiker ingelogd is
    Maak een nieuw account aan en bevestig dat gebruiker ingelogd is
    Log out