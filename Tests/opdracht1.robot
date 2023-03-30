*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/LoginKeywords.robot
Resource          ../Resources/Variables/LoginVariable.robot
Test Setup        Navigate to HomePage
#Test Teardown     Exit Browser


*** Test Cases ***
PositiefLoginTest 
    Log in                     ${Username}             ${Password}
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
