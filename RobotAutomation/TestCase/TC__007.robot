*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${Browser}     Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_007
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    ${default}=    get selenium implicit wait
    log to console    ${default}
    set selenium implicit wait    20 seconds
    ${default}=    get selenium implicit wait
    log to console    ${default}
    Input Text    name:fld_username    Priyanka
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    PriyankaCutie@beautiful.com
    capture page screenshot    TC_007_screenshot.png
*** Keywords ***
