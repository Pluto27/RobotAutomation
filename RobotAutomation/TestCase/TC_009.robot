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
    set selenium speed    2seconds
    Input Text    name:fld_username    Priyanka
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    PriyankaCutie@beautiful.com
    go to    https://www.google.com
    ${URL1}=    get location
    log to console    ${URL1}
    go back
     ${URL1}=    get location
    log to console    ${URL1}
    execute javascript    window.scrollTo(0,500)
    sleep    10 seconds
*** Keywords ***
