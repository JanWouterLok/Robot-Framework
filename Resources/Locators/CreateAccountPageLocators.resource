*** Variables ***

${CREATE_ACCOUNT_PAGE_HEADER} =                         Create an account
${CREATE_ACCOUNT_PAGE_RADIO_BUTTON_MR} =                xpath=//*[@id="customer-form"]/section/div[1]/div[1]/label[1]/span/input
${CREATE_ACCOUNT_PAGE_RADIO_BUTTON_MRS} =               xpath=//*[@id="customer-form"]/section/div[1]/div[1]/label[2]
${CREATE_ACCOUNT_PAGE_FIRST_NAME_BOX} =                 name=firstname
${CREATE_ACCOUNT_PAGE_LAST_NAME_BOX} =                  name=lastname
${CREATE_ACCOUNT_PAGE_EMAIL_BOX} =                      name=email
${CREATE_ACCOUNT_PAGE_PASSWORD_BOX} =                   name=password
${CREATE_ACCOUNT_PAGE_BIRTHDAY_BOX} =                   name=birthday
${CREATE_ACCOUNT_PAGE_OPTIN_OFFERS_CHECKBOX} =          name=optin
${CREATE_ACCOUNT_PAGE_NEWSLETTER_CHECKBOX} =            name=newsletter
${CREATE_ACCOUNT_PAGE_SAVE_BUTTON} =                    css=.form-control-submit
${CREATE_ACCOUNT_PAGE_DATE_FORMAT_INCORRECT_MESSAGE} =  Format should be 05/31/1970.


${CREATE_ACCOUNT_PAGE_ERROR_MESSAGE} =                  PLACEHOLDER_LOCATOR!!_LOCATOR_NOT_FOUND
${CREATE_ACCOUNT_PAGE_INVALID_EMAIL_MESSAGE} =          PLACEHOLDER_LOCATOR!!_LOCATOR_NOT_FOUND
${CREATE_ACCOUNT_PAGE_INVALID_PASSWORD_MESSAGE} =       PLACEHOLDER_LOCATOR!!_LOCATOR_NOT_FOUND