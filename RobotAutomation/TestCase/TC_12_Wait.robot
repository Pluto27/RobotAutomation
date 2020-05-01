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
    wait until element contains    xpath://a[text()='Login']    Login
    wait until page contains element    xpath://span[contains(text(),'VIDEOS')]
*** Keywords ***
