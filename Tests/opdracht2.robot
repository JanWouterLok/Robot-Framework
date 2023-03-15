*** Settings ***
Library     SeleniumLibrary
Resource    C:/Robot-Framework/Resources/Keywords/loginKeywords.robot
Resource    C:/Robot-Framework/Resources/Variables/loginVariable.robot
Library     String


*** Test Cases ***
Maak een nieuw account aan en bevestig dat gebruiker ingelogd is
    Navigate to HomePage 
    Maak een nieuw account aan en bevestig dat gebruiker ingelogd is
    Log out
    Exit Browser