*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/LoginKeywords.robot
Resource          ../Resources/Variables/LoginVariables.robot
Resource          ../Resources/Variables/RegisterVariables.robot
Resource          ../Resources/Keywords/ProductsKeywords.robot
Resource          ../Resources/Keywords/RegisterKeywords.robot
Library           String
Test Setup        Navigate to HomePage
Test Teardown     Exit Browser



*** Test Cases ***
Open a new Account
    Open a new account
   # Verify new Account



    
