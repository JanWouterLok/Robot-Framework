*** Settings ***
Library         SeleniumLibrary
Library         String
Resource        ../PO/CreateAccountPage.resource
Resource        ../Locators/CreateAccountPageLocators.resource


*** Keywords ***

Generate and Use "Create Account" Mock Data
    [Documentation]     Generate random data for the Create Account page
    [Tags]              Create Account using random data


        ${GENERATED_FIRST_NAME_NEW_ACCOUNT} =      Generate Random String      3      [LETTERS]
        ${GENERATED_LAST_NAME_NEW_ACCOUNT} =       Generate Random String      3      [LETTERS]
        ${GENERATED_EMAIL_NEW_ACCOUNT} =           Generate Random String      5-10     [LETTERS][NUMBERS]
        ${GENERATED_PASSWORD_NEW_ACCOUNT} =        Generate Random String      5-10      [LETTERS]

        Input Text    ${CREATE_ACCOUNT_PAGE_FIRST_NAME_BOX}       Roy${GENERATED_FIRST_NAME_NEW_ACCOUNT}
        Input Text    ${CREATE_ACCOUNT_PAGE_LAST_NAME_BOX}        Batty${GENERATED_LAST_NAME_NEW_ACCOUNT}
        Input Text    ${CREATE_ACCOUNT_PAGE_EMAIL_BOX}            ${GENERATED_EMAIL_NEW_ACCOUNT}@TEST.NL
        Input Text    ${CREATE_ACCOUNT_PAGE_PASSWORD_BOX}         ${GENERATED_PASSWORD_NEW_ACCOUNT}

