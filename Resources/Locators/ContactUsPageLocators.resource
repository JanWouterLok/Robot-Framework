*** Variables ***
${CONTACT_US_PAGE_HEADER} =                     xpath=//h4
${CONTACT_US_PAGE_SUBJECT_DROPDOWN}             name=id_contact
${CONTACT_US_PAGE_EMAIL_ADDRESS_FIELD}          name=from
${CONTACT_US_PAGE_ATTACHMENT_BUTTON}            css=.buttonText
${CONTACT_US_PAGE_MESSAGE_FIELD}                name=message
${CONTACT_US_PAGE_SEND_BUTTON}                  name=submitMessage
${CONTACT_US_PAGE_SUCCESS_MESSAGE}              css=.alert > ul:nth-child(1) > li:nth-child(1)