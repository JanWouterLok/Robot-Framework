*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/Variables/TestCasesVariables.resource

*** Keywords ***
Start web test
    Set Selenium Speed              .001s
    Set Selenium Timeout            10s
    Log                             Starting the test case!
    Open Browser                    about:blank                                     ${BROWSER}
    Maximize Browser Window

End web test
    Sleep                           2s
    Close Browser
    Log                             Ending the test case!