*** Settings ***
Library         SeleniumLibrary
Library         String
Resource        ../PO/CreateAccountPage.resource
Resource        ../Locators/CreateAccountPageLocators.resource


*** Keywords ***

Generate and Use Valid "Create Account" Mock Data
    [Documentation]     Generate random data for the Create Account page
    [Tags]              Create Account using random data


        ${GENERATED_FIRST_NAME_NEW_ACCOUNT} =               Generate Random String      3               [LETTERS]
        ${GENERATED_LAST_NAME_NEW_ACCOUNT} =                Generate Random String      3               [LETTERS]
        ${GENERATED_EMAIL_NEW_ACCOUNT} =                    Generate Random String      5-10            [LETTERS][NUMBERS]
        ${GENERATED_PASSWORD_NEW_ACCOUNT} =                 Generate Random String      5-10            [LETTERS]

        Input Text    ${CREATE_ACCOUNT_PAGE_FIRST_NAME_BOX}       Roy${GENERATED_FIRST_NAME_NEW_ACCOUNT}
        Input Text    ${CREATE_ACCOUNT_PAGE_LAST_NAME_BOX}        Batty${GENERATED_LAST_NAME_NEW_ACCOUNT}
        Input Text    ${CREATE_ACCOUNT_PAGE_EMAIL_BOX}            ${GENERATED_EMAIL_NEW_ACCOUNT}@TEST.nl
        Input Text    ${CREATE_ACCOUNT_PAGE_PASSWORD_BOX}         ${GENERATED_PASSWORD_NEW_ACCOUNT}

Generate and Use "Create Account" Mock Data with invalid email
    [Documentation]     Generate random data for the Create Account page with invalid email
    [Tags]              Create Account using random data but with invalid email

        ${GENERATED_FIRST_NAME_NEW_ACCOUNT} =               Generate Random String      3               [LETTERS]
        ${GENERATED_LAST_NAME_NEW_ACCOUNT} =                Generate Random String      3               [LETTERS]
        ${GENERATED_EMAIL_NEW_ACCOUNT} =                    Generate Random String      5-10            [LETTERS][NUMBERS]
        ${GENERATED_PASSWORD_NEW_ACCOUNT} =                 Generate Random String      5-10            [LETTERS]

        Input Text    ${CREATE_ACCOUNT_PAGE_FIRST_NAME_BOX}       Rachel${GENERATED_FIRST_NAME_NEW_ACCOUNT}
        Input Text    ${CREATE_ACCOUNT_PAGE_LAST_NAME_BOX}        Tyrell${GENERATED_LAST_NAME_NEW_ACCOUNT}
        Input Text    ${CREATE_ACCOUNT_PAGE_EMAIL_BOX}            ${GENERATED_EMAIL_NEW_ACCOUNT}BUT_NOT_AN_EMAIL
        Input Text    ${CREATE_ACCOUNT_PAGE_PASSWORD_BOX}         ${GENERATED_PASSWORD_NEW_ACCOUNT}

Generate and Use "Create Account" Mock Data with invalid password
    [Documentation]     Generate random data for the Create Account page with invalid password
    [Tags]              Create Account using random data but with invalid password

        ${GENERATED_FIRST_NAME_NEW_ACCOUNT} =               Generate Random String      3               [LETTERS]
        ${GENERATED_LAST_NAME_NEW_ACCOUNT} =                Generate Random String      3               [LETTERS]
        ${GENERATED_EMAIL_NEW_ACCOUNT} =                    Generate Random String      5-10            [LETTERS][NUMBERS]
        ${GENERATED_INVALID_PASSWORD_NEW_ACCOUNT} =         Generate Random String      1-4             [LETTERS]

        Input Text    ${CREATE_ACCOUNT_PAGE_FIRST_NAME_BOX}       Rick${GENERATED_FIRST_NAME_NEW_ACCOUNT}
        Input Text    ${CREATE_ACCOUNT_PAGE_LAST_NAME_BOX}        Deckard${GENERATED_LAST_NAME_NEW_ACCOUNT}
        Input Text    ${CREATE_ACCOUNT_PAGE_EMAIL_BOX}            ${GENERATED_EMAIL_NEW_ACCOUNT}@TEST.nl
        Input Text    ${CREATE_ACCOUNT_PAGE_PASSWORD_BOX}         ${GENERATED_INVALID_PASSWORD_NEW_ACCOUNT}

