
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}     Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Keywords ***
Start Browser and Maximize
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

Close Browser Window
    ${Title}=    Get Title
    log to console    ${Title}
    Close Browser

Before each Test Suite
    log to console    Registration Test Suite Starting

After each Test Suite
    log to console    Registration Test Suite Completed