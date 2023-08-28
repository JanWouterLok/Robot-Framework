*** Variables ***

${ACCOUNT_ADDRESS_PAGE_HEADER}=                         xpath=//*[@id="main"]/header/h1
${ACCOUNT_ADDRESS_PAGE_CREATE_NEW_ADDRESS_ELEMENT}=     xpath=//*[@id="content"]/div[3]/a/span
${ACCOUNT_ADDRESS_PAGE_UPDATE_ADDRESS_LINK}=
${ACCOUNT_ADDRESS_PAGE_DELETE_ADDRESS_LINK}=            css=[id^='address-'] a:nth-child(2) > span
${ACCOUNT_PAGE_ADDRESS_ADDED_MESSAGE}=                  xpath=//*[@id="notifications"]/div/article/ul/li
${ACCOUNT_ADDRESS_PAGE_MY_ADDRESS_SECTION}=             xpath=//*[@id="content"]/div[3]
${ACCOUNT_ADDRESS_PAGE_BACK_TO_ACCOUNT_ELEMENT}=        xpath=//*[@id="main"]/footer/a[1]/span
${ACCOUNT_ADDRESS_PAGE_HOME_ELEMENT}=                   xpath=//*[@id="main"]/footer/a[2]/i