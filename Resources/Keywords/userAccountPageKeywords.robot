*** Settings ***
Resource    homePageKeywords.robot
Library    RPA.RobotLogListener
Library    RPA.Windows

*** Keywords ***
Navigate to order history and details page
    Click Element    ${orderHistoryDetails}

Go to details of last order
    Click Element    ${orderDetails}

Select hummingbird sweater size L from list of ordered product
    Select From List By Label    ${selectOrderedProduct}  Hummingbird printed sweater - Size : L

Report broken product
    Input Text    ${messageAboutProduct}    Product broken
    Click Element    ${sendMessageAboutProduct}
    Element Should Contain    ${messageProductSuccessful}    Message successfully sent

Make a complaint about hummingbird sweater being broken
    Navigate to my account
    Navigate to order history and details page
    Go to details of last order
    Select hummingbird sweater size L from list of ordered product
    Report broken product

Navigate to user address page
    ${c} =   Get Element Count   ${addressPage}
    IF    ${c}>0
        Click Element     ${addressPage}
    ELSE
        Click Element     ${firstAddressPage}
    END

Remove existing address
     ${c} =   Get Element Count   ${deleteAddress}
     Log To Console    ${c}
    FOR    ${element}    IN RANGE   ${c}
        Click Element   ${deleteAddress}
    END
    ${b} =    Get Element Count    ${addNewAddress}
    IF    ${b} == 1
         Click Element    ${addNewAddress}
    END


Add new address
    Click Element   ${addNewAddress}
    Input Text      ${newAddressField}    Randomstreet 990D
    Input Text      ${newPostalCodeField}    2359 IT
    Input Text      ${newCityField}    Lille
    Select From List By Value      ${newCountryField}    13
    Click Element    ${saveButton}
    Element Should Contain    ${verifyAddress}    Address successfully added!

Add first address
    Remove existing address
    Input Text      ${newAddressField}    Randomstreet 41A
    Input Text      ${newPostalCodeField}    23540
    Input Text      ${newCityField}    Almelo
    Select From List By Value      ${newCountryField}    8
    Click Element    ${saveButton}
    Element Should Contain    ${verifyAddress}    Address successfully added!