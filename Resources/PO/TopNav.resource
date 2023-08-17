*** Settings ***
Library             SeleniumLibrary
Resource            C:/ValoriRobotFrameWorkProject/Robot-Framework/Resources/Locators/TopNavLocators.resource

*** Keywords ***


Click Sign In Link

        Click Element                       ${TOP_NAV_SIGN_IN_LINK}

Verify user is logged in

        Page Should Contain Element         ${TOP_NAV_LOGGED_IN_USER}
