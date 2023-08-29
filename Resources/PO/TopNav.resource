*** Settings ***
Library             SeleniumLibrary
Resource            ../Locators/TopNavLocators.resource

*** Keywords ***


Click Sign In Link
    Click Element                       ${TOP_NAV_SIGN_IN_LINK}

Verify user is logged in
    Page Should Contain Element         ${TOP_NAV_LOGGED_IN_USER}

Click Logged in user link
    Click Element                       ${TOP_NAV_LOGGED_IN_USER}

Click "Valori" logo
    Click Element                       ${TOP_NAV_VALORI_LOGO}

Click "Sign out" link
    Click Element                       ${TOP_NAV_SIGN_OUT_LINK}

Click "Clothes" Dropdown
    Click Element                       ${TOP_NAV_CLOTHES_DROPDOWN}




