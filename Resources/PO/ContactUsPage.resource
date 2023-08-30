*** Settings ***
Library           SeleniumLibrary
Resource            ../Variables/TestCasesVariables.resource
Resource            ../Locators/ContactUsPageLocators.resource

*** Keywords ***
Verify "Contact us" page loaded
    Wait Until Page Contains Element    ${CONTACT_US_PAGE_HEADER}
    Page Should Contain Element         ${CONTACT_US_PAGE_HEADER}

Select "Customer service" from Dropdown
    Select From List By Label           ${CONTACT_US_PAGE_SUBJECT_DROPDOWN}         ${CUSTOMER_SERVICE_LABEL}

Enter Email in Email Field
	Input Text                          ${CONTACT_US_PAGE_EMAIL_ADDRESS_FIELD}      ${VALID_EMAIL}

Enter Complaint in Message Field
    Input Text                          ${CONTACT_US_PAGE_MESSAGE_FIELD}            ${COMPLAINT_TEXT}

Click "Send" button
	Click Button                        ${CONTACT_US_PAGE_SEND_BUTTON}

Verify "Your message has been successfully sent to our team." message displayed
    Wait Until Page Contains Element    ${CONTACT_US_PAGE_SUCCESS_MESSAGE}
    Page Should Contain Element         ${CONTACT_US_PAGE_SUCCESS_MESSAGE}


