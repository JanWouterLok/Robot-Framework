*** Settings ***
Library             SeleniumLibrary
Resource            ../Variables/TestCasesVariables.resource
Resource            ../Locators/CreateAccountPageLocators.resource

*** Keywords ***

Verify Create Account Page loaded

        Wait Until Page Contains        ${CREATE_ACCOUNT_PAGE_HEADER}
        Page Should Contain             ${CREATE_ACCOUNT_PAGE_HEADER}

Click radio button "Mr."

        Click Element                   ${CREATE_ACCOUNT_PAGE_RADIO_BUTTON_MR}

Click radio button "Mrs."

        Click Element                   ${CREATE_ACCOUNT_PAGE_RADIO_BUTTON_MRS}

Enter First Name

        Input Text                      ${CREATE_ACCOUNT_PAGE_FIRST_NAME_BOX}           ${FIRST_NAME_NEW_ACCOUNT}

Enter Last Name

        Input Text                      ${CREATE_ACCOUNT_PAGE_LAST_NAME_BOX}            ${LAST_NAME_NEW_ACCOUNT}

Enter Email

        Input Text                      ${CREATE_ACCOUNT_PAGE_EMAIL_BOX}                ${EMAIL_NEW_ACCOUNT}

Enter Password
        [
        Input Text                      ${CREATE_ACCOUNT_PAGE_PASSWORD_BOX}             ${PASSWORD_NEW_ACCOUNT}

Enter Date of Birth

        Input Text                      ${CREATE_ACCOUNT_PAGE_BIRTHDAY_BOX}             ${BIRTHDAY_NEW_ACCOUNT}

Click "Receive offers" checkbox

        Click Button                    ${CREATE_ACCOUNT_PAGE_OPTIN_OFFERS_CHECKBOX}

Click "Sign up for newsletter" checkbox

        Click Button                    ${CREATE_ACCOUNT_PAGE_NEWSLETTER_CHECKBOX}

Click "Save" new account button

        Click Button                    ${CREATE_ACCOUNT_PAGE_SAVE_BUTTON}

Verify date format is incorrect message

        Wait Until Page Contains        ${CREATE_ACCOUNT_PAGE_DATE_FORMAT_INCORRECT_MESSAGE}
        Page Should Contain             ${CREATE_ACCOUNT_PAGE_DATE_FORMAT_INCORRECT_MESSAGE}
