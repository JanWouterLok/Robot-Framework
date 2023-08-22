*** Settings ***
Library             SeleniumLibrary
Resource            ../Variables/TestCasesVariables.resource
Resource            ../Locators/SignInPageLocators.resource

*** Keywords ***

Verify Sign In Page Loaded

        Wait Until Page Contains Element                ${SIGN_IN_PAGE_HEADER}
        Page Should Contain Element                     ${SIGN_IN_PAGE_HEADER}

Enter email

        Input Text      ${SIGN_IN_PAGE_EMAIL_BOX}       ${VALID_EMAIL}

Enter password

        Input Text      ${SIGN_IN_PAGE_PASSWORD_BOX}    ${VALID_PASSWORD}

Enter invalid email

        Input Text      ${SIGN_IN_PAGE_EMAIL_BOX}       ${INVALID_EMAIL}

Enter unknown email

        Input Text      ${SIGN_IN_PAGE_EMAIL_BOX}       ${INVALID_UNKNOWN_EMAIL}

Capture Page Screenshot after entering invalid email
         Sleep                                          1s
         Capture Page Screenshot                        ${SCREENSHOT_INVALID_EMAIL_SIGN_IN}

Enter invalid password

        Input Text      ${SIGN_IN_PAGE_PASSWORD_BOX}    ${INVALID_PASSWORD}

Capture Page Screenshot after entering invalid email and password
        Sleep                                           1s
        Capture Page Screenshot                         ${SCREENSHOT_INVALID_EMAIL_AND_PASSWORD_SIGN_IN}

click sign in

        Click Button                                    ${SIGN_IN_BUTTON}

Verify wrong email message displayed

        Wait Until Element Is Visible                   //div[contains(text(), "ontbreekt een '@'")]    timeout=5s
        Wait Until Page Contains                        ${SIGN_IN_PAGE_INVALID_EMAIL_ERROR}
        Page Should Contain                             ${SIGN_IN_PAGE_INVALID_EMAIL_ERROR}

Verify wrong password message displayed

        Wait Until Page Contains                        ${SIGN_IN_PAGE_INVALID_PASSWORD_ERROR}
        Page Should Contain                             ${SIGN_IN_PAGE_INVALID_PASSWORD_ERROR}

Verify authentication failed message displayed

        Wait Until Page Contains                        ${SIGN_IN_PAGE_AUTHENTICATION_ERROR}
        Page Should Contain                             ${SIGN_IN_PAGE_AUTHENTICATION_ERROR}

Verify if still on sign in page after entering invalid email and/or password

        Wait Until Page Contains Element                ${SIGN_IN_PAGE_HEADER}
        Page Should Contain Element                     ${SIGN_IN_PAGE_HEADER}

Click create an account link

        Click Link                                      ${SIGN_IN_PAGE_CREATE_ACCOUNT_LINK}