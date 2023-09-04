*** Settings ***
Library     SeleniumLibrary

Resource    ../variables.resource
Resource    ../locators.resource

Resource    cartPageKeywords.resource
Resource    checkoutPageKeywords.resource
Resource    contactUsPageKeyword.resource
Resource    loginKeywords.resource
Resource    productPageKeyword.resource
Resource    registrationKeywords.resource
Resource    searchPageKeywords.resource
Resource    userAccountPageKeywords.resource


*** Keywords ***
Navigate to Website
    Open Browser   ${Url}      ${Browser}
    Maximize Browser Window

Navigate to Homepage
    Click Element         ${homePage}
    
Navigate to accesories
    Click Element    ${accessoriesPage}

Navigate to my account
    Click Element    ${myAccountPage}
    
Navigate to Contact Us
    Click Element    ${contactUsPage}

Exit Browser
    Close Browser

Confirm home page
    Title Should Be    Valori Automation Practice Shop
    
Search product
    [Arguments]     ${searchInput}
    Input Text      ${searchboxInputField}  ${searchInput}
    Press Keys      ${searchboxInputField}	RETURN

Log out
    Click Link  ${logoutButton}