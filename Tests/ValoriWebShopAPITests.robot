*** Settings ***
Library          RequestsLibrary
Resource         ../Resources/Common.resource
Test Setup       Create an API request session

*** Test Cases ***
Quick GET request test
    [Documentation]     Quick GET request test
    [Tags]    TC_WS_API_001    Smoke    GET request
    ${response}=    GET     ${URL}

