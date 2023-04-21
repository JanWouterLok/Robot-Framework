*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords/loginKeywords.robot
Resource    ../Resources/Keywords/homePageKeywords.robot
Resource    ../Resources/Variables/loginVariable.robot
Resource    ../Resources/Variables/homePageVariable.robot
Resource    ../Resources/Locators/homePageLocators.robot
Test Setup  Navigate to HomePage
Test Teardown   Exit Browser

*** Test Cases ***
Search test
    Search product