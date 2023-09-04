*** Settings ***
Library     String
Library     Screenshot
Library     ImageCompare
Resource    homePageKeywords.resource

*** Keywords ***
Navigate to create new account page
    Click Link         ${signinLink}
    Click Link         No account? Create one here

Input valid registration information
    Select gender    1
    Input first and last name    ${FirstName}    ${LastName}
    Use randomly generated email
    Input Password    ${passwordInputField}    ${Password}
    Input birthday    ${Birthday}
    Select to receive special offers
    Click Button  Save
    Wait Until Element Contains  ${usernameDisplayField}  ${FirstName} ${LastName}
    sleep  3s

Input invalid registration email
    Select gender    2
    Input first and last name    ${FirstName}    ${LastName}
    Input Text  ${emailInputField}  hellobirdmail.com
    Input Password    ${passwordInputField}    ${NewPassword}
    Input birthday    ${Birthday}
    Select to receive newsletters
    Click Button  Save
    Sleep    2s
    Capture Page Screenshot     Tests/screenshots/InvalidEmailToCompare.png
    Compare Images    ${ReferenceInvalidEmail}    Tests/screenshots/InvalidEmailToCompare.png

Input invalid registration password
    Select gender    2
    Input first and last name    ${FirstName}    ${LastName}
    Input Text  ${emailInputField}  hello@birdmail.com
    Input Password    ${passwordInputField}    ${InvalidNewPassword}
    Input birthday    ${Birthday}
    Select to receive newsletters
    Click Button  Save
    Sleep    2s
    Capture Page Screenshot     Tests/screenshots/InvalidPasswordToCompare.png
    Compare Images    ${ReferenceInvalidPassword}    Tests/screenshots/InvalidPasswordToCompare.png

Select gender
    [Arguments]     ${GenderID}
    Select Radio Button  ${socialTitleRadioButton}  ${GenderID}

Input first and last name
    [Arguments]     ${firstName}    ${lastName}
    Input Text  ${firstnameInputField}  ${firstName}
    Input Text  ${lastnameInputFeld}  ${lastName}

Use randomly generated email
    ${randomEmail} =  Generate Random String  8-12  [LETTERS][NUMBERS]
    Input Text  ${emailInputField}  ${randomEmail}@birdmail.com

Use randomly generated incorrect email
    ${randomEmail} =  Generate Random String  8-12  [LETTERS][NUMBERS]
    Input Text  ${emailInputField}  ${randomEmail}birdmail.com

Input birthday
    [Arguments]     ${birthday}
    Input Text  ${birthdayInputField}  ${birthday}

Select to receive special offers
    Select Checkbox  ${receiveOfferCheckbox}

Select to receive newsletters
    Select Checkbox  ${receiveNewsletterCheckbox}