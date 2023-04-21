*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../Resources/Keywords/homePageKeywords.robot
Resource    ../Resources/Keywords/registerKeywords.robot
Resource    ../Resources/Variables/homePageVariable.robot
Resource    ../Resources/Variables/registerVariable.robot
Resource    ../Resources/Locators/homePageLocators.robot
Resource    ../Resources/Locators/registerLocators.robot
Test Setup  Navigate to HomePage
Test Teardown   Exit Browser

*** Test Cases ***
Create an new account
    Create an new account and confirm that user is logged in
    Log out

