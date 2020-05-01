*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/Resource3.robot

*** Variables ***
${Browser}     Chrome
${URL}    https://www.thetestingworld.com/testings/
*** Test Cases ***
TC_16
    ${Res}=    Start Browser and Maximize    ${URL}    ${Browser}
    Input Text    name:fld_username    Priyanka
    log to console    ${Res}
*** Keywords ***