*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../Resources/Keywords/homePageKeywords.robot
Resource    ../Resources/Keywords/registerKeywords.robot
Resource    ../Resources/Variables/homePageVariable.robot
Resource    ../Resources/Variables/registerVariable.robot
Test Setup  Navigate to HomePage
Test Teardown   Exit Browser

*** Test Cases ***
Create new account and verify that user is signed in
    Create new account and verify that user is signed in
    Log out

New account
    Create account