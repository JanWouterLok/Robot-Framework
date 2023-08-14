*** Settings ***
Resource            ../resources/po/LandingPage.resource
Resource            ../resources/po/SignInPage.resource
Resource            ../resources/po/AccountPage.resource
Resource            ../resources/po/TopNav.resource
Resource            ../resources/po/FooterNav.resource

*** Keywords ***

Go to Valori Webshop landing page
    LandingPage.Load
    LandingPage.Verify page loaded



