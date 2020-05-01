*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}     Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_003 Keywords
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Enter Username Email    Priyanka    PriyankaCutie@beautiful.com
    Enter Username Email    Pranjal    pranjal@piu
    Close Browser


*** Keywords ***
Enter Username Email
    [Arguments]    ${username}   ${email}
    Input Text    name:fld_username    ${username}
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    ${email}