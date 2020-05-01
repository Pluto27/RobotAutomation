*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/Resource2.robot

*** Variables ***
${Browser}     Chrome
${URL}    https://www.thetestingworld.com/testings/
*** Test Cases ***
TC_17
    Start Browser and Maximize    ${URL}    ${Browser}
    Input Text    name:fld_username    Priyanka
*** Keywords ***