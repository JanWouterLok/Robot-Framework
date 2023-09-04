*** Settings ***
Resource    ../Resources/Keywords/homePageKeywords.resource

Test Setup      Navigate to Website
Test Teardown   Exit Browser


*** Test Cases ***
Smoke test
    [Documentation]     As a user of this framework, I want to run a smoke test so that I know there are no software related problems before running other tests
    Confirm home page
