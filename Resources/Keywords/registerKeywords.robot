*** Keywords ***
Create an new account and confirm that user is logged in
    Click Link         ${signinLink}
    Click Link         No account? Create one here
    Select Radio Button  ${socialTitleRadioButton}  1
    Input Text  ${firstnameInputField}  ${firstname}
    Input Text  ${lastnameInputFeld}  ${lastname}
    ${randomEmail} =  Generate Random String  8-12  [LETTERS][NUMBERS]
    Input Text  ${emailInputField}  ${randomEmail}@birdmail.com
    Input Text  ${passwordInputField}  ${Password}
    Input Text  ${birthdayInputField}  ${birthdate}
    Select Checkbox  ${receiveOfferCheckbox}
    Click Button  Save
    Wait Until Element Contains  ${usernameDisplayField}  ${firstname} ${lastname}
    sleep  3s

