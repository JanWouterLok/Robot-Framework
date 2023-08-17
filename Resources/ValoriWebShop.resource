*** Settings ***
Resource            ../Resources/PO/AccountPage.resource
Resource            ../Resources/PO/FooterNav.resource
Resource            ../Resources/PO/LandingPage.resource
Resource            ../Resources/PO/SignInPage.resource
Resource            ../Resources/PO/TopNav.resource
Resource            ../Resources/PO/CreateAccountPage.resource

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

Sign in to Valori Webshop with invalid email
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Enter invalid Email
        SignInPage.Enter password
        SignInPage.Click sign in
        SignInPage.Verify wrong email message displayed

Sign in to Valori Webshop with invalid password
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Enter Email
        SignInPage.Enter invalid password
        SignInPage.Click sign in
        SignInPage.Verify authentication failed message displayed

Sign in to Valori Webshop with invalid email and password
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Enter invalid Email
        SignInPage.Enter invalid password
        SignInPage.Click sign in
        SignInPage.Verify wrong email message displayed

Create an "Mr" account on Valori Webshop
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Click create an account link
        CreateAccountPage.Verify Create Account page loaded
        CreateAccountPage.Click radio button "Mr."
        CreateAccountPage.Enter first name
        CreateAccountPage.Enter last name
        CreateAccountPage.Enter email
        CreateAccountPage.Enter password
        CreateAccountPage.Enter date of birth
        CreateAccountPage.Click "Receive offers" checkbox
        CreateAccountPage.Click "Sign up for newsletter" checkbox
        CreateAccountPage.Click "Save" new account button
        TopNav.Verify user is logged in




