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
    sleep  10 seconds
    set selenium timeout    20 seconds
    ${tm}=    get selenium timeout
    log to console    ${tm}
    wait until page contains    Testing
    Set Selenium Speed    2seconds
    Input Text    name:fld_username    Priyanka
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    PriyankaCutie@beautiful.com
*** Keywords ***
