*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/LoginPageKeywords.robot
Resource          ../Resources/Variables/LoginPageVariable.robot
Resource          ../Resources/Variables/HomePageVariables.robot
Resource          ../Resources/Keywords/HomePageKeywords.robot
Test Setup        Navigate to HomePage
#Test Teardown     Exit Browser


*** Test Cases ***
Positieve Login Test 
    Log in                     
    Verify Login 
    
Negatieve Login Test with valid password & invaild username
    Log in                     ${onjuisteUserName}    ${Password}
    Verify Login is failed 

Negatieve Login Test with invalid password & vaild username
    Log in                     ${Username}            ${onjuistePassword} 
    Verify Login is failed 
      
Negatieve Login Test with invalid password & invaild username
    Log in                     ${onjuisteUserName}    ${onjuistePassword} 
    Verify Login is failed 


# Verify unable to login with wrong email
#     Log in                     ${WrongUsername}    ${onjuistePassword}
#     alert should be present    Gebruik een '@' in het e-mailadres. In ${WrongUsername} ontbreekt een '@'.