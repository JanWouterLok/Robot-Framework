*** Settings ***
Resource            ../resources/po/LandingPage.resource
Resource            ../resources/po/SignInPage.resource
Resource            ../resources/po/AccountPage.resource
Resource            ../resources/po/TopNav.resource
Resource            ../resources/po/FooterNav.resource
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
        SignInPage.Enter Valid Email
        SignInPage.Enter Valid password
        SignInPage.Click sign in
        AccountPage.Verify Account page loaded

Sign in to Valori Webshop with invalid email
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Enter Invalid Email
        SignInPage.Enter Valid password
        SignInPage.Click sign in
        SignInPage.Verify error message displayed

Sign in to Valori Webshop with invalid password
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Enter valid Email
        SignInPage.Enter invalid password
        SignInPage.Click sign in
        SignInPage.Verify error message displayed

Sign in to Valori Webshop with invalid email and password
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Enter invalid Email
        SignInPage.Enter invalid password
        SignInPage.Click sign in
        SignInPage.Verify error message displayed


