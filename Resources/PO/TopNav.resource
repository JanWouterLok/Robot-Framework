*** Settings ***
Library             SeleniumLibrary
Resource            C:/ValoriRobotFrameWorkProject/Robot-Framework/Resources/Locators/TopNavLocators.resource

*** Keywords ***


Click Sign In Link

        Click Element      ${TOP_NAV_SIGN_IN_LINK}
