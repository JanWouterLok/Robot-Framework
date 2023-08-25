*** Variables ***
# Scalar variables
${BROWSER}                              chrome
${URL}                                  https://webshop.mobiletestautomation.nl
${VALID_EMAIL}                          dantester@jourrapide.com
${VALID_PASSWORD}                       1qazxsw2
${INVALID_EMAIL}                        WrongEmail
${INVALID_UNKNOWN_EMAIL}                Unknown@email.address
${INVALID_PASSWORD}                     WrongPassword
${PASSWORD_WRONG_FORMAT}                blah
${ITEM_SEARCH}                          hummingbird
${FIRST_NAME_NEW_ACCOUNT}               Roy
${LAST_NAME_NEW_ACCOUNT}                Batty
${EMAIL_NEW_ACCOUNT}                    Replicant6@BladeRunner.com
${PASSWORD_NEW_ACCOUNT}                 Priss123
${BIRTHDAY_NEW_ACCOUNT}                 01/01/1993
${ADDRESS_CREATE_NEW_ADDRESS}           Teststraat 1
${POSTAL_CODE_CREATE_NEW_ADDRESS}       1234 AB
${CITY_CREATE_NEW_ADDRESS}              Teststad


# List variables
@{SHOPPING_CART_ITEMS}          Hummingbird printed t-shirt     The adventure begins Framed poster     Hummingbird printed sweater      The best is yet to come' Framed poster      Mug The best is yet to come
@{CREATE_NEW_ADDRESS}           Teststraat 1    1234 AB     Teststad

# Screenshot paths

# Sign in page
${SCREENSHOT_INVALID_EMAIL_SIGN_IN}=                            C:/ValoriRobotFrameWorkProject/Robot-Framework/Results/Screenshot_Invalid_Email_Sign_In.png
${SCREENSHOT_INVALID_EMAIL_AND_PASSWORD_SIGN_IN}=               ../Results/Screenshot_Invalid_Credentials_Sign_In.png

# Create account page
${SCREENSHOT_INVALID_EMAIL_CREATE_ACCOUNT}=                     C:/ValoriRobotFrameWorkProject/Robot-Framework/Results/Screenshot_Invalid_Email_Create_Account.png
${SCREENSHOT_INVALID_PASSWORD_CREATE_ACCOUNT}=                  C:/ValoriRobotFrameWorkProject/Robot-Framework/Results/Screenshot_Invalid_Password_Create_Account.png

# Screenshot Reference paths

${SCREENSHOT_INVALID_EMAIL_CREATE_ACCOUNT_REFERENCE}=           C:/ValoriRobotFrameWorkProject/Robot-Framework/Resources/ReferenceImages/Screenshot_Invalid_Email_Create_Account_Reference.png
${SCREENSHOT_INVALID_PASSWORD_CREATE_ACCOUNT_REFERENCE}=        C:/ValoriRobotFrameWorkProject/Robot-Framework/Resources/ReferenceImages/Screenshot_Invalid_Password_Create_Account_Reference.png

${SCREENSHOT_INVALID_EMAIL_SIGN_IN_REFERENCE}=                  C:/ValoriRobotFrameWorkProject/Robot-Framework/Resources/ReferenceImages/Screenshot_Invalid_Email_Sign_In_Reference.png







