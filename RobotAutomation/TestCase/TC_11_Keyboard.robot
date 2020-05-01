*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${Browser}     Chrome
${URL}    https://www.thetestingworld.com

*** Test Cases ***
TC_006

    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    click link    xpath://a[text()='Login']
    press key    name:username    hello
    press key    xpath://button[@type='submit']    \\13
*** Keywords ***
