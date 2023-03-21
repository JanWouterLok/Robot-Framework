*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords/loginKeywords.robot
Resource    ../Resources/Variables/loginVariable.robot
Test Setup  Navigate to HomePage
Test Teardown  Exit Browser


*** Test Cases ***
Login op webshop en bevestig dat gebruiker ingelogd is
    Log in
    Bevestig dat gebruiker ingelogd is