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
    element text should be    xpath://div[@id='tab-content1']/p    Register now and kick start your career as a Software Testing Pro!
    element text should not be    xpath://div[@id='tab-content1']/p    PRANJALKASAR
    element should be enabled    name:fld_username
    element should be disabled    name:fld_username
    element should be visible    name:fld_username
    element should not be visible    name:fld_username
*** Keywords ***