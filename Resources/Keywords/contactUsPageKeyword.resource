*** Settings ***
Resource    homePageKeywords.resource

*** Keywords ***
Select customer service from subject
    Select From List By Label    ${subjectContactUs}  Customer service
    
Fill in email
    Input Text    ${emailContactUs}    hello@goodbye.nl
    
Complain about website and send form
    Input Text    ${messageTextContactUs}    Thank you for making a horrible website
    Click Element    ${submitContactUs}
    Element Should Contain    ${confirmContactUsSend}    Your message has been successfully sent to our team.

Fill in contact form with complaint about the website
    Navigate to Contact Us
    Select customer service from subject
    Fill in email
    Complain about website and send form