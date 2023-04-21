*** Keywords ***
Log in
    Click Link         ${signinLink}
    Input text         ${emailInputField}    ${username} 
    Input Password     ${passwordInputField}              ${Password}
    Click Button       ${signinButton}
    
Confirm user is sign in 
    Page Should Contain  Sign out


