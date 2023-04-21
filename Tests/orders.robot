*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../Resources/Keywords/homePageKeywords.robot
Resource    ../Resources/Keywords/registerKeywords.robot
Resource    ../Resources/Keywords/ordersKeywords.robot
Resource    ../Resources/Keywords/loginKeywords.robot
Resource    ../Resources/Variables/homePageVariable.robot
Resource    ../Resources/Variables/loginVariable.robot
Resource    ../Resources/Locators/homePageLocators.robot
Resource    ../Resources/Locators/loginLocators.robot
Test Setup  Navigate to HomePage
Test Teardown   Exit Browser

*** Test Cases ***

Order and verify product
    Log in                
    Navigate to WebShop Page
    Add a Mug the Adventure Begins
    Add a Hummingbird Printed T-Shirt
    Add a Brown Bear Cushion
    Add a Humminbird Notebook
    Add a Brown Bear Cushion
    Order Plaatsen en Versturen
    Verify de Order    