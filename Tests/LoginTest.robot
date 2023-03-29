*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords/homePageKeywords.robot
Resource    ../Resources/Keywords/loginKeywords.robot
Resource    ../Resources/Variables/loginVariable.robot
Resource    ../Resources/Variables/homePageVariable.robot
Resource    ../Resources/Variables/registerVariable.robot
Test Setup  Navigate to HomePage
Test Teardown   Exit Browser


*** Test Cases ***
PositiefLoginTest
    Navigate to HomePage 
    Log in
    Log out

Log in and confirm that user is signed in
    Log in and confirm that user is signed in
    Log out