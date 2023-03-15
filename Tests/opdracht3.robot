*** Settings ***
Library     SeleniumLibrary
Resource    C:/Robot-Framework/Resources/Keywords/loginKeywords.robot
Resource    C:/Robot-Framework/Resources/Variables/loginVariable.robot

*** Test Cases ***
Plaats 5 producten in de winkelwagen
    Navigate to HomePage
    Sleep  5s