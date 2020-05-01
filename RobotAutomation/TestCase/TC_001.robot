*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}     Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_001 Browser Start
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Input Text    name:fld_username    Priyanka
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    PriyankaCutie@beautiful.com
    Clear Element Text    name:fld_username
    Close Browser



*** Keywords ***
