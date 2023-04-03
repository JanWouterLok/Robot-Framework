*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/LoginPageKeywords.robot
Resource          ../Resources/Variables/LoginPageVariable.robot
Resource          ../Resources/Variables/HomePageVariables.robot
Resource          ../Resources/Keywords/HomePageKeywords.robot
Test Setup        Navigate to HomePage
#Test Teardown     Exit Browser


*** Test Cases ***
PositiefLoginTest 
    Log in                     
    Verify Login 
    

NegatiefLoginTest1
    Log in                     ${onjuisteUserName}    ${Password}
    Verify Login is failed 
   


NegatiefLoginTest2
    Log in                     ${Username}            ${onjuistePassword} 
    Verify Login is failed 
      
NegatiefLoginTest3
    Log in                     ${onjuisteUserName}    ${onjuistePassword} 
    Verify Login is failed 


Verify unable to login with wrong email
    Log in                     ${'WrongUsername}    ${onjuistePassword}
    alert should be present    Gebruik een '@' in het e-mailadres. In ${'WrongUsername} ontbreekt een '@'.