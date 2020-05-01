*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${Browser}     Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_006

    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Open Browser    https://www.google.com    Chrome
    Maximize Browser Window
    switch browser    1
    ${URL1}=    get location
    log to console    ${URL1}
    switch browser    2
    ${URL2}=    get location
    log to console    ${URL2}

*** Keywords ***
