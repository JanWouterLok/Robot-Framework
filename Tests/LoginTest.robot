*** Settings ***
Library     SeleniumLibrary
Resource    Keywords/loginKeywords.robot
Resource    Variables/loginVariable.robot


*** Test Cases ***
PositiefLoginTest
    Navigate to HomePage 
    Log in
    Exit Browser
   
      
    





