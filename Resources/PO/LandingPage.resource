*** Settings ***
Library             SeleniumLibrary
Resource            /Resources/Variables/LandingPageVariables.resource
Resource            /Resources/Variables/TestCasesVariables.resource

*** Variables ***



*** Keywords ***

Load
    Go to                                   ${URL}

Verify Page loaded
    Wait Until Page Contains Element        ${LANDING_PAGE_BRAND_IMAGE}

```

