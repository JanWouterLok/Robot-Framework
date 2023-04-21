*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords/homePageKeywords.robot
Resource    ../Resources/Keywords/loginKeywords.robot
Resource    ../Resources/Variables/loginVariable.robot
Resource    ../Resources/Variables/homePageVariable.robot
Resource    ../Resources/Variables/registerVariable.robot
Resource    ../Resources/Locators/homePageLocators.robot
Resource    ../Resources/Locators/loginLocators.robot
Test Setup  Navigate to HomePage
Test Teardown   Exit Browser


*** Test Cases ***
PositiefLoginTest    
    Log in 
    Confirm user is sign in   

#voorbeeld zonder keywords
Login to webshop and confirm user is logged in
    Click Link         ${signinLink}
    Input text         ${emailInputField}    ${username} 
    Input Password     ${passwordInputField}              ${Password}
    Click Button       ${signinButton}    
    