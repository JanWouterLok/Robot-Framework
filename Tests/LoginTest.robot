*** Settings ***
Library     SeleniumLibrary
Resource    C:/Robot-Framework/Resources/Keywords/loginKeywords.robot
Resource    C:/Robot-Framework/Resources/Variables/loginVariable.robot


*** Test Cases ***
PositiefLoginTest
    Navigate to HomePage 
    Log in
    Exit Browser