*** Settings ***
Library                 SeleniumLibrary
Resource                ../Locators/OrderHistoryPageLocators.resource

*** Keywords ***

Verify "Order History" page loaded
	Wait Until Page Contains Element

Click "Order DAGEDQZUV Details" Link
	Click Link                      ${ORDER_HISTORY_PAGE_ORDER_NUMBER_DAGEDQZUV_DETAILS}

