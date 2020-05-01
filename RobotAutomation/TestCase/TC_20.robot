*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/Locators.py

*** Variables ***
${Browser}     Chrome
${URL}    https://www.thetestingworld.com/testings/

*** Test Cases ***
TC_20
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    ${lodalasan}=    Read Element Locator    Registration.username_textbox_name
    Input Text    name:${lodalasan}   Priyanka
    Input Text    xpath://*[@id="tab-content1"]/form/input[3]    PriyankaCutie@beautiful.com

*** Keywords ***
Read Element Locator
        [Arguments]    ${pillu}
        ${result}=    read_locator_from_json    ${pillu}
        [return]    ${result}