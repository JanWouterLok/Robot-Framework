*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../Resources/Keywords/homePageKeywords.robot
Resource    ../Resources/Keywords/registerKeywords.robot
Resource    ../Resources/Variables/homePageVariable.robot
Resource    ../Resources/Variables/registerVariable.robot
Test Setup  Navigate to HomePage
Test Teardown   Exit Browser

*** Test Cases ***
Maak een nieuw account aan en bevestig dat gebruiker ingelogd is
    Maak een nieuw account aan en bevestig dat gebruiker ingelogd is
    Log out

New account
    Create account