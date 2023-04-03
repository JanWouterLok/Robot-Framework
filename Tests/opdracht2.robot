*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/LoginPageKeywords.robot
Resource          ../Resources/Variables/LoginPageVariables.robot
Resource          ../Resources/Variables/RegisterPageVariables.robot
Resource          ../Resources/Keywords/ProductsPageKeywords.robot
Resource          ../Resources/Keywords/RegisterPageKeywords.robot
Resource          ../Resources/Keywords/HomePageKeywords.robot
Resource          ../Resources/Keywords/HomePageVariables.robot
Library           String
Test Setup        Navigate to HomePage
Test Teardown     Exit Browser



*** Test Cases ***
Open a new Account
    Open a new account
    Verify new Account



    
