*** Settings ***
Resource    homePageKeywords.resource

*** Keywords ***
Log in
    [Arguments]         ${username}      ${password}
    Click Link          ${signinLink}
    Input text          ${emailInputField}           ${username}
    Input Password      ${passwordInputField}        ${password}
    Click Button        ${signinButton}

Log in with correct login
    Log in      ${Username}    ${Password}

Log in with incorrect username
    Log in      invalidname@jourrapide.com    ${Password}

Log in with incorrect password
    Log in      ${Username}    zasdgjk;

Log in with incorrect credentials
    Log in      dantester@randomstuff.com    lkiadstje40-234
    
Confirm sign in pass 
    Page Should Contain  Sign out

Confirm sign in failed
    Page Should Contain  Authentication failed.