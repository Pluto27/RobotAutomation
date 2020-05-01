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
    open context menu    xpath://span[contains(text(),'VIDEOS')]
    #double click element    xpath://a[text()='Login']
    mouse down    xpath://a[text()='Performance Testing']
    sleep    10 seconds
    mouse up    xpath://a[text()='Login']
    mouse over    xpath://span[contains(text(),'VIDEOS')]
*** Keywords ***
