*** Settings ***
Library         SeleniumLibrary
Library         String
Resource        ../Locators/CreateAccountPageLocators.resource


*** Keywords ***

Generate And Use Valid "Create Account" Mock Data
    [Documentation]     Generate random data for the Create Account page
    [Tags]              GUMD-001        Functional          Valid Mock Data


        ${GENERATED_FIRST_NAME_NEW_ACCOUNT} =               Generate Random String      3               [LETTERS]
        ${GENERATED_LAST_NAME_NEW_ACCOUNT} =                Generate Random String      3               [LETTERS]
        ${GENERATED_EMAIL_NEW_ACCOUNT} =                    Generate Random String      5-10            [LETTERS][NUMBERS]
        ${GENERATED_PASSWORD_NEW_ACCOUNT} =                 Generate Random String      5-10            [LETTERS][NUMBERS]

        Input Text    ${CREATE_ACCOUNT_PAGE_FIRST_NAME_BOX}       Roy${GENERATED_FIRST_NAME_NEW_ACCOUNT}
        Input Text    ${CREATE_ACCOUNT_PAGE_LAST_NAME_BOX}        Batty${GENERATED_LAST_NAME_NEW_ACCOUNT}
        Input Text    ${CREATE_ACCOUNT_PAGE_EMAIL_BOX}            ${GENERATED_EMAIL_NEW_ACCOUNT}@TEST.nl
        Input Text    ${CREATE_ACCOUNT_PAGE_PASSWORD_BOX}         ${GENERATED_PASSWORD_NEW_ACCOUNT}

Generate And Use "Create Account" Mock Data With Invalid Email
    [Documentation]     Generate random data for the Create Account page with invalid email
    [Tags]              GUMD-002        Functional         Invalid Mock Email

        ${GENERATED_FIRST_NAME_NEW_ACCOUNT} =               Generate Random String      3               [LETTERS]
        ${GENERATED_LAST_NAME_NEW_ACCOUNT} =                Generate Random String      3               [LETTERS]
        ${GENERATED_EMAIL_NEW_ACCOUNT} =                    Generate Random String      5-10            [LETTERS][NUMBERS]
        ${GENERATED_PASSWORD_NEW_ACCOUNT} =                 Generate Random String      5-10            [LETTERS]

        Input Text    ${CREATE_ACCOUNT_PAGE_FIRST_NAME_BOX}       Rachel${GENERATED_FIRST_NAME_NEW_ACCOUNT}
        Input Text    ${CREATE_ACCOUNT_PAGE_LAST_NAME_BOX}        Tyrell${GENERATED_LAST_NAME_NEW_ACCOUNT}
        Input Text    ${CREATE_ACCOUNT_PAGE_EMAIL_BOX}            ${GENERATED_EMAIL_NEW_ACCOUNT}_NOT_AN_EMAIL
        Input Text    ${CREATE_ACCOUNT_PAGE_PASSWORD_BOX}         ${GENERATED_PASSWORD_NEW_ACCOUNT}

Generate And Use "Create Account" Mock Data With Invalid Password
    [Documentation]     Generate random data for the Create Account page with invalid password
    [Tags]              GUMD-003        Functional          Invalid Mock Password

        ${GENERATED_FIRST_NAME_NEW_ACCOUNT} =               Generate Random String      3               [LETTERS]
        ${GENERATED_LAST_NAME_NEW_ACCOUNT} =                Generate Random String      3               [LETTERS]
        ${GENERATED_EMAIL_NEW_ACCOUNT} =                    Generate Random String      5-10            [LETTERS][NUMBERS]
        ${GENERATED_INVALID_PASSWORD_NEW_ACCOUNT} =         Generate Random String      1-4             [LETTERS]

        Input Text    ${CREATE_ACCOUNT_PAGE_FIRST_NAME_BOX}       Rick${GENERATED_FIRST_NAME_NEW_ACCOUNT}
        Input Text    ${CREATE_ACCOUNT_PAGE_LAST_NAME_BOX}        Deckard${GENERATED_LAST_NAME_NEW_ACCOUNT}
        Input Text    ${CREATE_ACCOUNT_PAGE_EMAIL_BOX}            ${GENERATED_EMAIL_NEW_ACCOUNT}@TEST.nl
        Input Text    ${CREATE_ACCOUNT_PAGE_PASSWORD_BOX}         ${GENERATED_INVALID_PASSWORD_NEW_ACCOUNT}


