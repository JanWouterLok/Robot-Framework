*** Settings ***
Resource    ../Resources/Keywords/homePageKeywords.resource

Test Setup      Navigate to Website
Test Teardown   Exit Browser

*** Test Cases ***
Create an new account
    [Documentation]     An account is made with valid regristration information
    Navigate to create new account page
    Input valid registration information
    Log out

Create new account with invalid email
    [Documentation]     An attempt is made to create an account with an incorrect email address
    [Tags]
    Navigate to create new account page
    Input invalid registration email

Create new account with invalid email
    [Documentation]     An attempt is made to create an account with an incorrect password
    [Tags]      NOW
    Navigate to create new account page
    Input invalid registration password

