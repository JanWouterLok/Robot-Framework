*** Settings ***
Library   SeleniumLibrary
#Test Setup       Navigate to home
#Test Teardown    Log out and Close Browser

*** Variables ***
${Browser}           Chrome
${SiteUrl}           https://webshop.mobiletestautomation.nl/
#${Accounts}          services_proxy/bank/customers/12212/accounts
#${Text}              ParaBank
${Userid}            dantester@jourrapide.com  
${Password}          1qazxsw2


*** Keywords ***
Log In
  Open Browser  ${SiteUrl}  ${Browser}
  Click Element  class=user-info
  Sleep  2

  #  //*[@id="_desktop_user_info"]/div/a


*** Test Cases ***
Testcase Log In
    Log in
#test case name  # username  #password
#User John Smith  john        demo
#User Jane Doe    jane        demo

# *** Settings ***
# Library          SeleniumLibrary
# Library          OperatingSystem       
# Library          Collections
# Resource         variables10.resource
# Resource         keywords10.resource
# Test Setup       Navigate to home
# Test Teardown    Log out and Close Browser

# *** Test Cases ***
# Clean Database and Register New Customer Account
#     Clean and Initialize Database
#     Register
#     Sleep  3s
