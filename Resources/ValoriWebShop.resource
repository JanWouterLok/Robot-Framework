*** Settings ***
Resource            ../Resources/PO/AccountPage.resource
Resource            ../Resources/PO/FooterNav.resource
Resource            ../Resources/PO/LandingPage.resource
Resource            ../Resources/PO/SignInPage.resource
Resource            ../Resources/PO/TopNav.resource

*** Keywords ***

Go to Valori Webshop landing page
        LandingPage.Load
        LandingPage.Verify page loaded

Sign in to Valori Webshop
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Enter Email
        SignInPage.Enter password
        SignInPage.Click sign in
        AccountPage.Verify Account page loaded




