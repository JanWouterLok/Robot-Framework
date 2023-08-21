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

Click product "HummingBird Printed T-Shirt"
    Click Element                           ${LANDING_PAGE_HUMMINGBIRD_PRINTED_T_SHIRT}

Click product "The Adventure Begins Framed Poster"
    Click Element                           ${LANDING_PAGE_THE_ADVENTURE_BEGINS_FRAMED_POSTER}

Click product "HummingBird Printed Sweater"

Click product "The Best is Yet to Come Framed Poster"

Click product "The Best is Yet to Come Mug"

```

