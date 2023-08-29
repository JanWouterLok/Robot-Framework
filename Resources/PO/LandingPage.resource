*** Settings ***
Library             SeleniumLibrary
Resource            ../Locators/LandingPageLocators.resource
Resource            ../Variables/TestCasesVariables.resource

*** Variables ***



*** Keywords ***

Load
    Go to                                   ${URL}

Verify Page loaded
    Wait Until Page Contains Element        ${LANDING_PAGE_BRAND_IMAGE}

Click product "HummingBird Printed T-Shirt"
    Click Element                           ${LANDING_PAGE_HUMMINGBIRD_PRINTED_T_SHIRT_THUMBNAIL}

Click product "The Adventure Begins Framed Poster"
    Click Element                           ${LANDING_PAGE_THE_ADVENTURE_BEGINS_FRAMED_POSTER_THUMBNAIL}

Click product "HummingBird Printed Sweater"
    Click Element                           ${LANDING_PAGE_HUMMINGBIRD_PRINTED_SWEATER_THUMBNAIL}

Click product "The Best is Yet to Come Framed Poster"
    Click Element                           ${LANDING_PAGE_THE_BEST_IS_YET_TO_COME_FRAMED_POSTER_THUMBNAIL}

Click product "The Best is Yet to Come Mug"
    Click Element                           ${LANDING_PAGE_THE_BEST_IS_YET_TO_COME_MUG_THUMBNAIL}

```

