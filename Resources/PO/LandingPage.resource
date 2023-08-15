*** Settings ***
Library             SeleniumLibrary
Resource            C:/ValoriRobotFrameWorkProject/Robot-Framework/Resources/Locators/LandingPageLocators.resource
Resource            C:/ValoriRobotFrameWorkProject/Robot-Framework/Resources/Variables/TestCasesVariables.resource

*** Variables ***



*** Keywords ***

Load
    Go to                                   ${URL}

Verify Page loaded
    Wait Until Page Contains Element        ${LANDING_PAGE_BRAND_IMAGE}

```

