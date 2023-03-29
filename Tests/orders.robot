*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../Resources/Keywords/homePageKeywords.robot
Resource    ../Resources/Keywords/registerKeywords.robot
Resource    ../Resources/Keywords/ordersKeywords.robot
Resource    ../Resources/Keywords/loginKeywords.robot
Resource    ../Resources/Variables/homePageVariable.robot
Test Setup  Navigate to HomePage
Test Teardown   Exit Browser

*** Test Cases ***

New order
    Search product
    Add product in cart

Order something and send to your own address
    Create new account and verify that user is signed in
    Order something and send to your own address
    Log out

Add 5 products to the shopping cart
    Navigate to HomePage and show all products page 1
    Add 5 products to the shopping cart