*** Settings ***
Resource    ../Resources/Keywords/homePageKeywords.robot

Test Setup      Navigate to Website
Test Teardown   Exit Browser


*** Test Cases ***
Successful log in
    [Documentation]     Login succefully
    Log in with correct login
    Confirm sign in pass

Unsuccessful log in with invalid username
    [Documentation]     Try to log in with invalid username
    Log in with incorrect username
    Confirm sign in failed

Unsuccessful log in with invalid password
    [Documentation]     Try to log in with invalid password
    Log in with incorrect password
    Confirm sign in failed

Unsuccessful log in with invalid credentials
    [Documentation]     Try to log in with invalid username and password
    Log in with incorrect credentials
    Confirm sign in failed