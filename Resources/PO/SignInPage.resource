*** Settings ***
Library             SeleniumLibrary

Resource            C:/ValoriRobotFrameWorkProject/Robot-Framework/Resources/Variables/TestCasesVariables.resource
Resource            C:/ValoriRobotFrameWorkProject/Robot-Framework/Resources/Locators/SignInPageLocators.resource

*** Keywords ***

Verify Sign In Page Loaded

    Wait Until Page Contains Element        ${SIGN_IN_PAGE_HEADER}
    Page Should Contain Element             ${SIGN_IN_PAGE_HEADER}

Enter email

        Input Text      ${SIGN_IN_PAGE_EMAIL_BOX}       ${VALID_EMAIL}

Enter password

        Input Text      ${SIGN_IN_PAGE_PASSWORD_BOX}    ${VALID_PASSWORD}

click sign in

        Click Button    ${SIGN_IN_BUTTON}

Verify error message displayed