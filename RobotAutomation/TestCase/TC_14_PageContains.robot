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
    click element    Xpath://a[text()='Login']
    #page should contain    VIDEOS
    #page should not contain    VIDEOS22
    #page should contain textfield    name:username
    page should not contain textfield    name:username
    click element    xpath://button[@type='submit']

*** Keywords ***