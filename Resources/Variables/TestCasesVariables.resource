*** Settings ***
Library         DateTime

*** Variables ***
${BROWSER}                      chrome
${URL}                          https://webshop.mobiletestautomation.nl
${VALID_EMAIL}                  dantester@jourrapide.com
${VALID_PASSWORD}               1qazxsw2
${INVALID_EMAIL}                fout.emailadres
${INVALID_PASSWORD}             UnheelvoudPazzwort
${ITEM_SEARCH}                  hummingbird
${FIRST_NAME_NEW_ACCOUNT}       Roy
${LAST_NAME_NEW_ACCOUNT}        Batty
${EMAIL_NEW_ACCOUNT}            Replicant6@BladeRunner.com
${PASSWORD_NEW_ACCOUNT}         Priss123
${BIRTHDAY_NEW_ACCOUNT}         01/01/1993
${SCREENSHOT_INVALID_EMAIL}=                            ../Results/Screenshot_Invalid_Email.png
${SCREENSHOT_INVALID_EMAIL_AND_PASSWORD}=               ../Results/Screenshot_Invalid_Credentials.png




